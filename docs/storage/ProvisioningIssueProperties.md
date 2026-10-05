# AzureRest::ProvisioningIssueProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_type** | [**IssueType**](IssueType.md) |  | [optional] |
| **severity** | [**Severity**](Severity.md) |  | [optional] |
| **description** | **String** | Description of the issue | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ProvisioningIssueProperties.new(
  issue_type: null,
  severity: null,
  description: null
)
```

