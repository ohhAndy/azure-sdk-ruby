# AzureRest::OSProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **computer_name** | **String** | Specifies the host OS name of the virtual machine. This name cannot be updated after the VM is created. **Max-length (Windows):** 15 characters. **Max-length (Linux):** 64 characters. For naming conventions and restrictions see [Azure infrastructure services implementation guidelines](https://docs.microsoft.com/azure/azure-resource-manager/management/resource-name-rules). | [optional] |
| **admin_username** | **String** | Specifies the name of the administrator account. &lt;br&gt;&lt;br&gt; This property cannot be updated after the VM is created. &lt;br&gt;&lt;br&gt; **Windows-only restriction:** Cannot end in \&quot;.\&quot; &lt;br&gt;&lt;br&gt; **Disallowed values:** \&quot;administrator\&quot;, \&quot;admin\&quot;, \&quot;user\&quot;, \&quot;user1\&quot;, \&quot;test\&quot;, \&quot;user2\&quot;, \&quot;test1\&quot;, \&quot;user3\&quot;, \&quot;admin1\&quot;, \&quot;1\&quot;, \&quot;123\&quot;, \&quot;a\&quot;, \&quot;actuser\&quot;, \&quot;adm\&quot;, \&quot;admin2\&quot;, \&quot;aspnet\&quot;, \&quot;backup\&quot;, \&quot;console\&quot;, \&quot;david\&quot;, \&quot;guest\&quot;, \&quot;john\&quot;, \&quot;owner\&quot;, \&quot;root\&quot;, \&quot;server\&quot;, \&quot;sql\&quot;, \&quot;support\&quot;, \&quot;support_388945a0\&quot;, \&quot;sys\&quot;, \&quot;test2\&quot;, \&quot;test3\&quot;, \&quot;user4\&quot;, \&quot;user5\&quot;. &lt;br&gt;&lt;br&gt; **Minimum-length (Linux):** 1  character &lt;br&gt;&lt;br&gt; **Max-length (Linux):** 64 characters &lt;br&gt;&lt;br&gt; **Max-length (Windows):** 20 characters. | [optional] |
| **admin_password** | **String** | Specifies the password of the administrator account. &lt;br&gt;&lt;br&gt; **Minimum-length (Windows):** 8 characters &lt;br&gt;&lt;br&gt; **Minimum-length (Linux):** 6 characters &lt;br&gt;&lt;br&gt; **Max-length (Windows):** 123 characters &lt;br&gt;&lt;br&gt; **Max-length (Linux):** 72 characters &lt;br&gt;&lt;br&gt; **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled &lt;br&gt; Has lower characters &lt;br&gt;Has upper characters &lt;br&gt; Has a digit &lt;br&gt; Has a special character (Regex match [\\W_]) &lt;br&gt;&lt;br&gt; **Disallowed values:** \&quot;abc@123\&quot;, \&quot;P@$$w0rd\&quot;, \&quot;P@ssw0rd\&quot;, \&quot;P@ssword123\&quot;, \&quot;Pa$$word\&quot;, \&quot;pass@word1\&quot;, \&quot;Password!\&quot;, \&quot;Password1\&quot;, \&quot;Password22\&quot;, \&quot;iloveyou!\&quot; &lt;br&gt;&lt;br&gt; For resetting the password, see [How to reset the Remote Desktop service or its login password in a Windows VM](https://docs.microsoft.com/troubleshoot/azure/virtual-machines/reset-rdp) &lt;br&gt;&lt;br&gt; For resetting root password, see [Manage users, SSH, and check or repair disks on Azure Linux VMs using the VMAccess Extension](https://docs.microsoft.com/troubleshoot/azure/virtual-machines/troubleshoot-ssh-connection) | [optional] |
| **custom_data** | **String** | Specifies a base-64 encoded string of custom data. The base-64 encoded string is decoded to a binary array that is saved as a file on the Virtual Machine. The maximum length of the binary array is 65535 bytes. **Note: Do not pass any secrets or passwords in customData property.** This property cannot be updated after the VM is created. The property &#39;customData&#39; is passed to the VM to be saved as a file, for more information see [Custom Data on Azure VMs](https://azure.microsoft.com/blog/custom-data-and-cloud-init-on-windows-azure/). For using cloud-init for your Linux VM, see [Using cloud-init to customize a Linux VM during creation](https://docs.microsoft.com/azure/virtual-machines/linux/using-cloud-init). | [optional] |
| **windows_configuration** | [**WindowsConfiguration**](WindowsConfiguration.md) |  | [optional] |
| **linux_configuration** | [**LinuxConfiguration**](LinuxConfiguration.md) |  | [optional] |
| **secrets** | [**Array&lt;VaultSecretGroup&gt;**](VaultSecretGroup.md) | Specifies set of certificates that should be installed onto the virtual machine. To install certificates on a virtual machine it is recommended to use the [Azure Key Vault virtual machine extension for Linux](https://docs.microsoft.com/azure/virtual-machines/extensions/key-vault-linux) or the [Azure Key Vault virtual machine extension for Windows](https://docs.microsoft.com/azure/virtual-machines/extensions/key-vault-windows). | [optional] |
| **allow_extension_operations** | **Boolean** | Specifies whether extension operations should be allowed on the virtual machine. This may only be set to False when no extensions are present on the virtual machine. | [optional] |
| **require_guest_provision_signal** | **Boolean** | Optional property which must either be set to True or omitted. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OSProfile.new(
  computer_name: null,
  admin_username: null,
  admin_password: null,
  custom_data: null,
  windows_configuration: null,
  linux_configuration: null,
  secrets: null,
  allow_extension_operations: null,
  require_guest_provision_signal: null
)
```

