# AzureRest::VMGalleryApplication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **String** | Optional, Specifies a passthrough value for more generic context. | [optional] |
| **order** | **Integer** | Optional, Specifies the order in which the packages have to be installed | [optional] |
| **package_reference_id** | **String** | Specifies the GalleryApplicationVersion resource id on the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/applications/{application}/versions/{version} |  |
| **configuration_reference** | **String** | Optional, Specifies the uri to an azure blob that will replace the default configuration for the package if provided | [optional] |
| **treat_failure_as_deployment_failure** | **Boolean** | Optional, If true, any failure for any operation in the VmApplication will fail the deployment | [optional] |
| **enable_automatic_upgrade** | **Boolean** | If set to true, when a new Gallery Application version is available in PIR/SIG, it will be automatically updated for the VM/VMSS | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VMGalleryApplication.new(
  tags: null,
  order: null,
  package_reference_id: null,
  configuration_reference: null,
  treat_failure_as_deployment_failure: null,
  enable_automatic_upgrade: null
)
```

