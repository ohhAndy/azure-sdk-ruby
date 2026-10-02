# AzureSDK::ProvisioningIssueProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_type** | [**IssueType**](IssueType.md) |  | [optional] |
| **severity** | [**Severity**](Severity.md) |  | [optional] |
| **description** | **String** | Description of the issue | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ProvisioningIssueProperties.new(
  issue_type: null,
  severity: null,
  description: null
)
```

