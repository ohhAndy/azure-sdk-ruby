# frozen_string_literal: true

require_relative "azure_rest/version"
require_relative "azure_rest/api_model_base"
require_relative "azure_rest/configuration"
require_relative "azure_rest/api_client"
require_relative "azure_rest/api_error"
require_relative "azure_rest/errors"
require_relative "azure_rest/profiles"
require_relative "azure_rest/auth"
require_relative "azure_rest/http"

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

  autoload :Client,           "azure_rest/client"
end
