# frozen_string_literal: true

require 'spec_helper'

RSpec.describe AzureRest::Client do
  let(:credentials) do
    AzureRest::Auth::ClientCredentialToken.new(
      tenant:        'my-tenant',
      client_id:     'my-client-id',
      client_secret: 'my-secret'
    )
  end

  let(:client) do
    AzureRest::Client.new(
      profile:         AzureRest::Profiles::AzureLatest,
      subscription_id: 'sub-12345',
      credentials:     credentials
    )
  end

  it 'initializes all namespace service clients' do
    expect(client.compute).to be_a(AzureRest::Compute::Client)
    expect(client.network).to be_a(AzureRest::Network::Client)
    expect(client.resources).to be_a(AzureRest::Resources::Client)
    expect(client.storage).to be_a(AzureRest::Storage::Client)
    expect(client.sql).to be_a(AzureRest::Sql::Client)
    expect(client.insights).to be_a(AzureRest::Insights::Client)
    expect(client.key_vault).to be_a(AzureRest::KeyVault::Client)
    expect(client.container_service).to be_a(AzureRest::ContainerService::Client)
    expect(client.authorization).to be_a(AzureRest::Authorization::Client)
    expect(client.commerce).to be_a(AzureRest::Commerce::Client)
    expect(client.maria_db).to be_a(AzureRest::MariaDB::Client)
    expect(client.my_sql).to be_a(AzureRest::MySQL::Client)
    expect(client.postgre_sql).to be_a(AzureRest::PostgreSQL::Client)
    expect(client.hd_insight).to be_a(AzureRest::HDInsight::Client)
  end

  it 'wires operation groups and facades correctly' do
    expect(client.compute.virtual_machines).to be_a(AzureRest::Compute::Client::VirtualMachinesFacade)
    expect(client.network.virtual_networks).to be_a(AzureRest::Network::Client::VirtualNetworksFacade)
    expect(client.resources.resource_groups).to be_a(AzureRest::Resources::Client::ResourceGroupsFacade)
    expect(client.storage.storage_accounts).to be_a(AzureRest::Storage::Client::StorageAccountsFacade)
  end

  it 'translates HTTP error status into unified exception hierarchy' do
    error_response = instance_double(
      Faraday::Response,
      status: 404,
      headers: { 'Content-Type' => 'application/json' },
      body: JSON.dump({ 'error' => { 'code' => 'ResourceNotFound', 'message' => 'The VM was not found.' } })
    )

    error = AzureRest::AzureApiError.from_response(error_response)
    expect(error).to be_a(AzureRest::NotFoundError)
    expect(error.status).to eq(404)
    expect(error.error_code).to eq('ResourceNotFound')
    expect(error.message).to include('The VM was not found.')
  end
end
