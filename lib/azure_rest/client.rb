# frozen_string_literal: true

require_relative 'configuration'
require_relative 'api_client'
require_relative 'errors'
require_relative 'profiles'
require_relative 'auth'
require_relative 'http'

require_relative 'compute/client'
require_relative 'network/client'
require_relative 'resources/client'
require_relative 'storage/client'
require_relative 'sql/client'
require_relative 'insights/client'
require_relative 'key_vault/client'
require_relative 'container_service/client'
require_relative 'authorization/client'
require_relative 'commerce/client'
require_relative 'maria_db/client'
require_relative 'my_sql/client'
require_relative 'postgre_sql/client'
require_relative 'hd_insight/client'

module AzureRest
  class Client
    attr_reader :profile, :subscription_id, :api_client, :token_mgr,
                :compute, :network, :resources, :storage, :sql, :insights,
                :key_vault, :container_service, :authorization, :commerce,
                :maria_db, :my_sql, :postgre_sql, :hd_insight

    def initialize(profile:, subscription_id:, credentials:, base_url: nil, proxy: nil)
      @profile         = profile.is_a?(Profile) ? profile : Profiles.lookup(profile)
      @subscription_id = subscription_id
      @proxy           = proxy

      # If Azure Stack metadata discovery is needed
      effective_base_url = base_url || @profile.base_url

      # Run metadata discovery only when the profile requires it AND the credentials
      # don't already have endpoints configured (i.e. they weren't pre-set at construction).
      needs_discovery = @profile.auth_mode == :discover &&
                        effective_base_url &&
                        credentials.respond_to?(:configure_endpoints!) &&
                        !(credentials.respond_to?(:authentication_endpoint) &&
                          credentials.authentication_endpoint)

      if needs_discovery
        discovery = Auth::MetadataDiscovery.new(effective_base_url, proxy: @proxy)
        endpoints = discovery.discover
        credentials.configure_endpoints!(
          authentication_endpoint: endpoints[:authentication_endpoint],
          resource:                endpoints[:token_audience]
        )
      end

      @token_mgr = credentials.is_a?(Auth::TokenManager) ? credentials : Auth::TokenManager.new(credentials, proxy: @proxy)

      @api_client = ApiClient.new(Configuration.new) do |config|
        config.host = effective_base_url
        config.access_token = -> { @token_mgr.access_token }
        config.proxy = @proxy if @proxy
      end

      @compute           = Compute::Client.new(@api_client, @subscription_id, @profile)
      @network           = Network::Client.new(@api_client, @subscription_id, @profile)
      @resources         = Resources::Client.new(@api_client, @subscription_id, @profile)
      @storage           = Storage::Client.new(@api_client, @subscription_id, @profile)
      @sql               = Sql::Client.new(@api_client, @subscription_id, @profile)
      @insights          = Insights::Client.new(@api_client, @subscription_id, @profile)
      @key_vault         = KeyVault::Client.new(@api_client, @subscription_id, @profile)
      @container_service = ContainerService::Client.new(@api_client, @subscription_id, @profile)
      @authorization     = Authorization::Client.new(@api_client, @subscription_id, @profile)
      @commerce          = Commerce::Client.new(@api_client, @subscription_id, @profile)
      @maria_db          = MariaDB::Client.new(@api_client, @subscription_id, @profile)
      @my_sql            = MySQL::Client.new(@api_client, @subscription_id, @profile)
      @postgre_sql       = PostgreSQL::Client.new(@api_client, @subscription_id, @profile)
      @hd_insight        = HDInsight::Client.new(@api_client, @subscription_id, @profile)
    end
  end
end
