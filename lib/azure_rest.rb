# frozen_string_literal: true

require_relative "azure_rest/version"
require_relative "azure_rest/api_model_base"

module AzureRest
  autoload :Compute,          "azure_rest/compute"
  autoload :Network,          "azure_rest/network"
  autoload :Resources,        "azure_rest/resources"
  autoload :Storage,          "azure_rest/storage"
  autoload :KeyVault,         "azure_rest/key_vault"
  autoload :ContainerService, "azure_rest/container_service"
  autoload :Sql,              "azure_rest/sql"
  autoload :MariaDB,          "azure_rest/maria_db"
  autoload :MySQL,            "azure_rest/my_sql"
  autoload :PostgreSQL,       "azure_rest/postgre_sql"
  autoload :Authorization,    "azure_rest/authorization"
  autoload :Insights,         "azure_rest/insights"
  autoload :HDInsight,        "azure_rest/hd_insight"
  autoload :Commerce,         "azure_rest/commerce"
end
