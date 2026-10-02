# frozen_string_literal: true

require_relative "azure_sdk/version"
require_relative "azure_sdk/api_model_base"

# Load models with retry to handle intra-namespace inheritance ordering.
model_files = Dir[File.join(__dir__, "azure_sdk", "*", "models", "*.rb")].sort
remaining = model_files.dup
last_error = nil
until remaining.empty?
  failed = []
  remaining.each do |f|
    begin
      require f
    rescue NameError => e
      failed << f
      last_error = e
    end
  end
  raise last_error if failed.length == remaining.length # no progress — real error
  remaining = failed
end

# All APIs (no inheritance issues between API classes)
Dir[File.join(__dir__, "azure_sdk", "*", "api", "*.rb")].sort.each { |f| require f }
