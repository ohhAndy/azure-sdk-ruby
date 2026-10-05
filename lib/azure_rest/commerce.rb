# frozen_string_literal: true

module AzureRest
  module Commerce
    autoload :AggregationGranularity, "azure_rest/commerce/models/aggregation_granularity.rb"
    autoload :ErrorObjectResponse, "azure_rest/commerce/models/error_object_response.rb"
    autoload :ErrorResponse, "azure_rest/commerce/models/error_response.rb"
    autoload :MeterInfo, "azure_rest/commerce/models/meter_info.rb"
    autoload :MonetaryCommitment, "azure_rest/commerce/models/monetary_commitment.rb"
    autoload :MonetaryCredit, "azure_rest/commerce/models/monetary_credit.rb"
    autoload :OfferTermInfo, "azure_rest/commerce/models/offer_term_info.rb"
    autoload :OfferTermInfoName, "azure_rest/commerce/models/offer_term_info_name.rb"
    autoload :RateCardQueryParameters, "azure_rest/commerce/models/rate_card_query_parameters.rb"
    autoload :RecurringCharge, "azure_rest/commerce/models/recurring_charge.rb"
    autoload :ResourceRateCardInfo, "azure_rest/commerce/models/resource_rate_card_info.rb"
    autoload :UsageAggregation, "azure_rest/commerce/models/usage_aggregation.rb"
    autoload :UsageAggregationListResult, "azure_rest/commerce/models/usage_aggregation_list_result.rb"
    autoload :UsageSample, "azure_rest/commerce/models/usage_sample.rb"
    autoload :RateCardApi, "azure_rest/commerce/api/rate_card_api.rb"
    autoload :UsageAggregatesApi, "azure_rest/commerce/api/usage_aggregates_api.rb"
  end
end
