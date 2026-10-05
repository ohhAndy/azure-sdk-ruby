# frozen_string_literal: true

module AzureRest
  module MariaDB
    autoload :CloudError, "azure_rest/maria_db/models/cloud_error.rb"
    autoload :ErrorAdditionalInfo, "azure_rest/maria_db/models/error_additional_info.rb"
    autoload :ErrorResponse, "azure_rest/maria_db/models/error_response.rb"
    autoload :ServerStartApi, "azure_rest/maria_db/api/server_start_api.rb"
    autoload :ServerStopApi, "azure_rest/maria_db/api/server_stop_api.rb"
  end
end
