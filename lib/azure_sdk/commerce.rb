# frozen_string_literal: true

module AzureSDK
  module Commerce
    autoload :RateCardApi, "azure_sdk/commerce/api/rate_card_api.rb"
    autoload :UsageAggregatesApi, "azure_sdk/commerce/api/usage_aggregates_api.rb"
    autoload :AggregationGranularity, "azure_sdk/commerce/models/aggregation_granularity.rb"
    autoload :ErrorObjectResponse, "azure_sdk/commerce/models/error_object_response.rb"
    autoload :ErrorResponse, "azure_sdk/commerce/models/error_response.rb"
    autoload :MeterInfo, "azure_sdk/commerce/models/meter_info.rb"
    autoload :MonetaryCommitment, "azure_sdk/commerce/models/monetary_commitment.rb"
    autoload :MonetaryCredit, "azure_sdk/commerce/models/monetary_credit.rb"
    autoload :OfferTermInfo, "azure_sdk/commerce/models/offer_term_info.rb"
    autoload :OfferTermInfoName, "azure_sdk/commerce/models/offer_term_info_name.rb"
    autoload :RateCardQueryParameters, "azure_sdk/commerce/models/rate_card_query_parameters.rb"
    autoload :RecurringCharge, "azure_sdk/commerce/models/recurring_charge.rb"
    autoload :ResourceRateCardInfo, "azure_sdk/commerce/models/resource_rate_card_info.rb"
    autoload :UsageAggregation, "azure_sdk/commerce/models/usage_aggregation.rb"
    autoload :UsageAggregationListResult, "azure_sdk/commerce/models/usage_aggregation_list_result.rb"
    autoload :UsageSample, "azure_sdk/commerce/models/usage_sample.rb"
  end
end
