# frozen_string_literal: true

require_relative "azure_sdk/version"
require_relative "azure_sdk/api_model_base"

# Map snake_case dir name -> exact Ruby module name as written in generated files
NS_MODULE = {
  "compute"           => "Compute",
  "network"           => "Network",
  "resources"         => "Resources",
  "storage"           => "Storage",
  "key_vault"         => "KeyVault",
  "container_service" => "ContainerService",
  "sql"               => "Sql",
  "maria_db"          => "MariaDB",
  "my_sql"            => "MySQL",
  "postgre_sql"       => "PostgreSQL",
  "authorization"     => "Authorization",
  "insights"          => "Insights",
  "hd_insight"        => "HDInsight",
  "commerce"          => "Commerce",
}.freeze

Dir[File.join(__dir__, "azure_sdk", "*", "{models,api}", "*.rb")].sort.each do |f|
  parts    = f.delete_suffix(".rb").split(File::SEPARATOR).last(4)
  ns_dir   = parts[1]
  const    = parts[3].gsub(/(^|_)([a-z\d])/) { Regexp.last_match(2).upcase }
  ns_const = NS_MODULE.fetch(ns_dir, ns_dir)
  mod = AzureSDK.const_defined?(ns_const) ? AzureSDK.const_get(ns_const) : AzureSDK.const_set(ns_const, Module.new)
  mod.autoload(const, f)
end
