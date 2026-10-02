# AzureSDK::VirtualMachineRunCommandProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | [**VirtualMachineRunCommandScriptSource**](VirtualMachineRunCommandScriptSource.md) |  | [optional] |
| **parameters** | [**Array&lt;RunCommandInputParameter&gt;**](RunCommandInputParameter.md) | The parameters used by the script. | [optional] |
| **protected_parameters** | [**Array&lt;RunCommandInputParameter&gt;**](RunCommandInputParameter.md) | The parameters used by the script. | [optional] |
| **async_execution** | **Boolean** | Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete. | [optional] |
| **run_as_user** | **String** | Specifies the user account on the VM when executing the run command. | [optional] |
| **run_as_password** | **String** | Specifies the user account password on the VM when executing the run command. | [optional] |
| **timeout_in_seconds** | **Integer** | The timeout in seconds to execute the run command. | [optional] |
| **output_blob_uri** | **String** | Specifies the Azure storage blob where script output stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer outputBlobManagedIdentity parameter. | [optional] |
| **error_blob_uri** | **String** | Specifies the Azure storage blob where script error stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer errorBlobManagedIdentity parameter. | [optional] |
| **output_blob_managed_identity** | [**RunCommandManagedIdentity**](RunCommandManagedIdentity.md) |  | [optional] |
| **error_blob_managed_identity** | [**RunCommandManagedIdentity**](RunCommandManagedIdentity.md) |  | [optional] |
| **provisioning_state** | **String** | The provisioning state, which only appears in the response. If treatFailureAsDeploymentFailure set to true, any failure in the script will fail the deployment and ProvisioningState will be marked as Failed. If treatFailureAsDeploymentFailure set to false, ProvisioningState would only reflect whether the run command was run or not by the extensions platform, it would not indicate whether script failed in case of script failures. See instance view of run command in case of script failures to see executionMessage, output, error: https://aka.ms/runcommandmanaged#get-execution-status-and-results | [optional][readonly] |
| **instance_view** | [**VirtualMachineRunCommandInstanceView**](VirtualMachineRunCommandInstanceView.md) |  | [optional] |
| **treat_failure_as_deployment_failure** | **Boolean** | Optional. If set to true, any failure in the script will fail the deployment and ProvisioningState will be marked as Failed. If set to false, ProvisioningState would only reflect whether the run command was run or not by the extensions platform, it would not indicate whether script failed in case of script failures. See instance view of run command in case of script failures to see executionMessage, output, error: https://aka.ms/runcommandmanaged#get-execution-status-and-results | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineRunCommandProperties.new(
  source: null,
  parameters: null,
  protected_parameters: null,
  async_execution: null,
  run_as_user: null,
  run_as_password: null,
  timeout_in_seconds: null,
  output_blob_uri: null,
  error_blob_uri: null,
  output_blob_managed_identity: null,
  error_blob_managed_identity: null,
  provisioning_state: null,
  instance_view: null,
  treat_failure_as_deployment_failure: null
)
```

