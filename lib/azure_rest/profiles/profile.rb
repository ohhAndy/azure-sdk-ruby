# frozen_string_literal: true

module AzureRest
  Profile = Struct.new(
    :base_url,                # Static URL or nil (if discovered)
    :auth_mode,               # :static or :discover
    :authentication_endpoint, # e.g. "https://login.microsoftonline.com/"
    :token_audience,          # e.g. "https://management.azure.com/"
    :api_versions,            # Hash mapping operation groups to API version strings
    keyword_init: true
  )

  module Profiles
    # Public Azure cloud
    AzureLatest = Profile.new(
      base_url:                'management.azure.com',
      auth_mode:               :static,
      authentication_endpoint: 'https://login.microsoftonline.com/',
      token_audience:          'https://management.azure.com/',
      api_versions:            {
        virtual_machines:           '2024-07-01',
        virtual_machine_sizes:     '2024-07-01',
        availability_sets:         '2024-07-01',
        snapshots:                 '2024-07-01',
        disks:                     '2024-07-01',
        virtual_networks:          '2024-05-01',
        network_interfaces:        '2024-05-01',
        network_security_groups:   '2024-05-01',
        public_ip_addresses:       '2024-05-01',
        load_balancers:            '2024-05-01',
        route_tables:              '2024-05-01',
        resource_groups:           '2024-03-01',
        resources:                 '2024-03-01',
        deployments:               '2024-03-01',
        deployment_operations:     '2024-03-01',
        providers:                 '2024-03-01',
        storage_accounts:          '2023-05-01',
        sql_servers:               '2023-08-01-preview',
        databases:                 '2023-08-01-preview',
        activity_logs:             '2015-04-01',
        metrics:                   '2018-01-01',
        scheduled_query_rules:     '2023-03-15-preview',
        vaults:                    '2023-07-01',
        managed_clusters:          '2024-05-01',
        role_assignments:          '2022-04-01',
        usage_aggregates:          '2015-06-01-preview',
        rate_card:                 '2015-06-01-preview',
        maria_db_servers:          '2018-06-01',
        my_sql_servers:            '2023-12-30',
        postgre_sql_servers:       '2022-12-01',
        hd_insight_clusters:       '2024-08-01-preview'
      }
    ).freeze

    # US Government Cloud
    AzureUSGovLatest = Profile.new(
      base_url:                'management.usgovcloudapi.net',
      auth_mode:               :static,
      authentication_endpoint: 'https://login.microsoftonline.us/',
      token_audience:          'https://management.usgovcloudapi.net/',
      api_versions:            AzureLatest.api_versions
    ).freeze

    # Azure Stack Hub 2020-09-01-hybrid profile
    AzureStack20200901 = Profile.new(
      base_url:                nil,
      auth_mode:               :discover,
      authentication_endpoint: nil,
      token_audience:          nil,
      api_versions:            {
        virtual_machines:         '2019-07-01',
        virtual_machine_sizes:   '2019-07-01',
        availability_sets:       '2019-07-01',
        snapshots:               '2019-07-01',
        disks:                   '2019-07-01',
        virtual_networks:        '2018-11-01',
        network_interfaces:      '2018-11-01',
        network_security_groups: '2018-11-01',
        public_ip_addresses:     '2018-11-01',
        load_balancers:          '2018-11-01',
        route_tables:            '2018-11-01',
        resource_groups:         '2019-10-01',
        resources:               '2019-10-01',
        deployments:             '2019-10-01',
        deployment_operations:   '2019-10-01',
        providers:               '2019-10-01',
        storage_accounts:        '2019-06-01',
        sql_servers:             '2014-04-01',
        databases:               '2014-04-01',
        activity_logs:           '2015-04-01',
        metrics:                 '2018-01-01',
        scheduled_query_rules:   '2018-04-16',
        vaults:                  '2016-10-01',
        role_assignments:        '2015-07-01',
        usage_aggregates:        '2015-06-01-preview',
        rate_card:               '2015-06-01-preview'
      }
    ).freeze

    # Azure Stack Hub 2018-03-01-hybrid profile
    AzureStack20180301 = Profile.new(
      base_url:                nil,
      auth_mode:               :discover,
      authentication_endpoint: nil,
      token_audience:          nil,
      api_versions:            {
        virtual_machines:         '2017-12-01',
        virtual_machine_sizes:   '2017-12-01',
        availability_sets:       '2017-12-01',
        snapshots:               '2017-12-01',
        disks:                   '2017-12-01',
        virtual_networks:        '2017-10-01',
        network_interfaces:      '2017-10-01',
        network_security_groups: '2017-10-01',
        public_ip_addresses:     '2017-10-01',
        load_balancers:          '2017-10-01',
        route_tables:            '2017-10-01',
        resource_groups:         '2018-02-01',
        resources:               '2018-02-01',
        deployments:             '2018-02-01',
        deployment_operations:   '2018-02-01',
        providers:               '2018-02-01',
        storage_accounts:        '2017-10-01',
        sql_servers:             '2014-04-01',
        databases:               '2014-04-01',
        activity_logs:           '2015-04-01',
        metrics:                 '2017-05-01-preview',
        vaults:                  '2016-10-01',
        role_assignments:        '2015-07-01',
        usage_aggregates:        '2015-06-01-preview',
        rate_card:               '2015-06-01-preview'
      }
    ).freeze

    # Azure Stack Hub 2017-03-09-profile
    AzureStack20170309 = Profile.new(
      base_url:                nil,
      auth_mode:               :discover,
      authentication_endpoint: nil,
      token_audience:          nil,
      api_versions:            {
        virtual_machines:         '2016-03-30',
        virtual_machine_sizes:   '2016-03-30',
        availability_sets:       '2016-03-30',
        snapshots:               '2016-03-30',
        disks:                   '2016-03-30',
        virtual_networks:        '2015-06-15',
        network_interfaces:      '2015-06-15',
        network_security_groups: '2015-06-15',
        public_ip_addresses:     '2015-06-15',
        load_balancers:          '2015-06-15',
        route_tables:            '2015-06-15',
        resource_groups:         '2016-02-01',
        resources:               '2016-02-01',
        deployments:             '2016-02-01',
        deployment_operations:   '2016-02-01',
        providers:               '2016-02-01',
        storage_accounts:        '2016-01-01',
        sql_servers:             '2014-04-01',
        databases:               '2014-04-01',
        activity_logs:           '2015-04-01',
        metrics:                 '2015-04-01',
        vaults:                  '2016-10-01',
        role_assignments:        '2015-07-01',
        usage_aggregates:        '2015-06-01-preview',
        rate_card:               '2015-06-01-preview'
      }
    ).freeze

    # Lookup profile by name or version string
    def self.lookup(identifier)
      return identifier if identifier.is_a?(Profile)

      case identifier.to_s.strip
      when 'latest', 'AzureLatest', 'public'
        AzureLatest
      when 'usgov', 'AzureUSGovLatest'
        AzureUSGovLatest
      when '2020-09-01-hybrid', '2020-09-01', 'AzureStack20200901'
        AzureStack20200901
      when '2018-03-01-hybrid', '2018-03-01', 'AzureStack20180301'
        AzureStack20180301
      when '2017-03-09-profile', '2017-03-09', 'AzureStack20170309'
        AzureStack20170309
      else
        raise ArgumentError, "Unknown profile: #{identifier}"
      end
    end
  end
end
