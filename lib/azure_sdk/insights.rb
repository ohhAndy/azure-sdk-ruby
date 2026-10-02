# frozen_string_literal: true

module AzureSDK
  module Insights
    autoload :Actions, "azure_sdk/insights/models/actions.rb"
    autoload :Condition, "azure_sdk/insights/models/condition.rb"
    autoload :ConditionFailingPeriods, "azure_sdk/insights/models/condition_failing_periods.rb"
    autoload :Dimension, "azure_sdk/insights/models/dimension.rb"
    autoload :ErrorAdditionalInfo, "azure_sdk/insights/models/error_additional_info.rb"
    autoload :ErrorContract, "azure_sdk/insights/models/error_contract.rb"
    autoload :ErrorResponse, "azure_sdk/insights/models/error_response.rb"
    autoload :Identity, "azure_sdk/insights/models/identity.rb"
    autoload :RuleResolveConfiguration, "azure_sdk/insights/models/rule_resolve_configuration.rb"
    autoload :ScheduledQueryRuleCriteria, "azure_sdk/insights/models/scheduled_query_rule_criteria.rb"
    autoload :ScheduledQueryRuleProperties, "azure_sdk/insights/models/scheduled_query_rule_properties.rb"
    autoload :ScheduledQueryRuleResource, "azure_sdk/insights/models/scheduled_query_rule_resource.rb"
    autoload :ScheduledQueryRuleResourceCollection, "azure_sdk/insights/models/scheduled_query_rule_resource_collection.rb"
    autoload :ScheduledQueryRuleResourcePatch, "azure_sdk/insights/models/scheduled_query_rule_resource_patch.rb"
    autoload :SystemData, "azure_sdk/insights/models/system_data.rb"
    autoload :UserIdentityProperties, "azure_sdk/insights/models/user_identity_properties.rb"
    autoload :ScheduledQueryRulesApi, "azure_sdk/insights/api/scheduled_query_rules_api.rb"
  end
end
