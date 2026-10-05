# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'AzureRest::Auth' do
  describe AzureRest::Auth::Token do
    it 'initializes with UTC expiration and checks expired status' do
      now = Time.now.utc
      token = AzureRest::Auth::Token.new(
        access_token: 'secret-token',
        expires_on: (now + 600).to_i
      )
      expect(token.access_token).to eq('secret-token')
      expect(token.expires_on.utc?).to be true
      expect(token.expired?(100)).to be false
      expect(token.expired?(700)).to be true
    end
  end

  describe AzureRest::Auth::ClientCredentialToken do
    let(:credentials) do
      AzureRest::Auth::ClientCredentialToken.new(
        tenant:        'my-tenant',
        client_id:     'my-client-id',
        client_secret: 'my-secret'
      )
    end

    it 'acquires token and caches it' do
      faraday_response = instance_double(
        Faraday::Response,
        success?: true,
        body: JSON.dump({
          'access_token' => 'sample_access_token',
          'token_type'   => 'Bearer',
          'expires_in'   => 3600
        })
      )

      allow_any_instance_of(Faraday::Connection).to receive(:post).and_return(faraday_response)

      token = credentials.token
      expect(token).to eq('sample_access_token')
      expect(credentials.access_token).to eq('sample_access_token')
    end

    it 'raises UnauthorizedError on auth failure' do
      faraday_response = instance_double(
        Faraday::Response,
        success?: false,
        status: 401,
        headers: {},
        body: JSON.dump({ 'error' => 'invalid_client', 'error_description' => 'Bad client secret' })
      )

      allow_any_instance_of(Faraday::Connection).to receive(:post).and_return(faraday_response)

      expect { credentials.token }.to raise_error(AzureRest::UnauthorizedError)
    end
  end

  describe AzureRest::Auth::PasswordToken do
    let(:credentials) do
      AzureRest::Auth::PasswordToken.new(
        tenant:                  'my-tenant',
        username:                'admin@stack.local',
        password:                'password123',
        authentication_endpoint: 'https://adfs.stack.local/adfs',
        resource:                'https://management.stack.local/'
      )
    end

    it 'uses well-known client id by default' do
      expect(credentials.client_id).to eq(AzureRest::Auth::MetadataDiscovery::AZURE_STACK_CLIENT_ID)
    end

    it 'acquires token via password grant' do
      faraday_response = instance_double(
        Faraday::Response,
        success?: true,
        body: JSON.dump({
          'access_token' => 'password_grant_token',
          'token_type'   => 'Bearer',
          'expires_in'   => 3600
        })
      )

      allow_any_instance_of(Faraday::Connection).to receive(:post).and_return(faraday_response)

      expect(credentials.token).to eq('password_grant_token')
    end
  end

  describe AzureRest::Auth::MetadataDiscovery do
    it 'discovers endpoints from Azure Stack' do
      discovery = AzureRest::Auth::MetadataDiscovery.new('https://management.stack.local')
      faraday_response = instance_double(
        Faraday::Response,
        success?: true,
        body: JSON.dump({
          'authentication' => {
            'loginEndpoint' => 'https://adfs.stack.local/adfs',
            'audiences'     => ['https://management.stack.local/']
          },
          'graphEndpoint' => 'https://graph.stack.local/'
        })
      )

      allow_any_instance_of(Faraday::Connection).to receive(:get).and_return(faraday_response)

      result = discovery.discover
      expect(result[:authentication_endpoint]).to eq('https://adfs.stack.local/adfs')
      expect(result[:token_audience]).to eq('https://management.stack.local/')
      expect(result[:graph_endpoint]).to eq('https://graph.stack.local/')
    end
  end
end
