# frozen_string_literal: true

module AzureRest
  module Insights
    autoload :Actions, "azure_rest/insights/models/actions.rb"
    autoload :Condition, "azure_rest/insights/models/condition.rb"
    autoload :ConditionFailingPeriods, "azure_rest/insights/models/condition_failing_periods.rb"
    autoload :Dimension, "azure_rest/insights/models/dimension.rb"
    autoload :ErrorAdditionalInfo, "azure_rest/insights/models/error_additional_info.rb"
    autoload :ErrorContract, "azure_rest/insights/models/error_contract.rb"
    autoload :ErrorResponse, "azure_rest/insights/models/error_response.rb"
    autoload :Identity, "azure_rest/insights/models/identity.rb"
    autoload :RuleResolveConfiguration, "azure_rest/insights/models/rule_resolve_configuration.rb"
    autoload :ScheduledQueryRuleCriteria, "azure_rest/insights/models/scheduled_query_rule_criteria.rb"
    autoload :ScheduledQueryRuleProperties, "azure_rest/insights/models/scheduled_query_rule_properties.rb"
    autoload :ScheduledQueryRuleResource, "azure_rest/insights/models/scheduled_query_rule_resource.rb"
    autoload :ScheduledQueryRuleResourceCollection, "azure_rest/insights/models/scheduled_query_rule_resource_collection.rb"
    autoload :ScheduledQueryRuleResourcePatch, "azure_rest/insights/models/scheduled_query_rule_resource_patch.rb"
    autoload :SystemData, "azure_rest/insights/models/system_data.rb"
    autoload :UserIdentityProperties, "azure_rest/insights/models/user_identity_properties.rb"
    autoload :ScheduledQueryRulesApi, "azure_rest/insights/api/scheduled_query_rules_api.rb"
  end
end
