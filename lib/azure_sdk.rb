# frozen_string_literal: true

require_relative "azure_sdk/version"
require_relative "azure_sdk/api_model_base"

module AzureSDK
  autoload :Compute,          "azure_sdk/compute"
  autoload :Network,          "azure_sdk/network"
  autoload :Resources,        "azure_sdk/resources"
  autoload :Storage,          "azure_sdk/storage"
  autoload :KeyVault,         "azure_sdk/key_vault"
  autoload :ContainerService, "azure_sdk/container_service"
  autoload :Sql,              "azure_sdk/sql"
  autoload :MariaDB,          "azure_sdk/maria_db"
  autoload :MySQL,            "azure_sdk/my_sql"
  autoload :PostgreSQL,       "azure_sdk/postgre_sql"
  autoload :Authorization,    "azure_sdk/authorization"
  autoload :Insights,         "azure_sdk/insights"
  autoload :HDInsight,        "azure_sdk/hd_insight"
  autoload :Commerce,         "azure_sdk/commerce"
end
