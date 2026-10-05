# frozen_string_literal: true

require 'spec_helper'

RSpec.describe AzureRest::Profile do
  describe 'standard profile constants' do
    it 'defines AzureLatest' do
      profile = AzureRest::Profiles::AzureLatest
      expect(profile.base_url).to eq('management.azure.com')
      expect(profile.auth_mode).to eq(:static)
      expect(profile.authentication_endpoint).to eq('https://login.microsoftonline.com/')
      expect(profile.token_audience).to eq('https://management.azure.com/')
      expect(profile.api_versions[:virtual_machines]).to eq('2024-07-01')
      expect(profile.api_versions[:virtual_networks]).to eq('2024-05-01')
      expect(profile.api_versions[:resource_groups]).to eq('2024-03-01')
    end

    it 'defines AzureUSGovLatest' do
      profile = AzureRest::Profiles::AzureUSGovLatest
      expect(profile.base_url).to eq('management.usgovcloudapi.net')
      expect(profile.auth_mode).to eq(:static)
      expect(profile.authentication_endpoint).to eq('https://login.microsoftonline.us/')
      expect(profile.token_audience).to eq('https://management.usgovcloudapi.net/')
    end

    it 'defines AzureStack20200901' do
      profile = AzureRest::Profiles::AzureStack20200901
      expect(profile.base_url).to be_nil
      expect(profile.auth_mode).to eq(:discover)
      expect(profile.api_versions[:virtual_machines]).to eq('2019-07-01')
      expect(profile.api_versions[:virtual_networks]).to eq('2018-11-01')
    end

    it 'defines AzureStack20180301' do
      profile = AzureRest::Profiles::AzureStack20180301
      expect(profile.base_url).to be_nil
      expect(profile.auth_mode).to eq(:discover)
      expect(profile.api_versions[:virtual_machines]).to eq('2017-12-01')
    end

    it 'defines AzureStack20170309' do
      profile = AzureRest::Profiles::AzureStack20170309
      expect(profile.base_url).to be_nil
      expect(profile.auth_mode).to eq(:discover)
      expect(profile.api_versions[:virtual_machines]).to eq('2016-03-30')
    end
  end

  describe '.lookup' do
    it 'looks up profiles by alias or string identifier' do
      expect(AzureRest::Profiles.lookup('latest')).to eq(AzureRest::Profiles::AzureLatest)
      expect(AzureRest::Profiles.lookup('AzureLatest')).to eq(AzureRest::Profiles::AzureLatest)
      expect(AzureRest::Profiles.lookup('usgov')).to eq(AzureRest::Profiles::AzureUSGovLatest)
      expect(AzureRest::Profiles.lookup('2020-09-01-hybrid')).to eq(AzureRest::Profiles::AzureStack20200901)
      expect(AzureRest::Profiles.lookup('2018-03-01-hybrid')).to eq(AzureRest::Profiles::AzureStack20180301)
      expect(AzureRest::Profiles.lookup('2017-03-09-profile')).to eq(AzureRest::Profiles::AzureStack20170309)
    end

    it 'returns the profile itself if passed a Profile instance' do
      profile = AzureRest::Profiles::AzureLatest
      expect(AzureRest::Profiles.lookup(profile)).to eq(profile)
    end

    it 'raises ArgumentError on unknown profile' do
      expect { AzureRest::Profiles.lookup('invalid-profile') }.to raise_error(ArgumentError, /Unknown profile/)
    end
  end
end
