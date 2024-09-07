# LinodeOpenapiClient::GetKernel200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **built** | **Time** | __Read-only__ The date on which this Kernel was built. | [optional][readonly] |
| **architecture** | **String** | __Filterable__, __Read-only__ The architecture of this Kernel. | [optional][readonly] |
| **label** | **String** | __Filterable__, __Read-only__ The friendly name of this Kernel. | [optional][readonly] |
| **pvops** | **Boolean** | __Filterable__, __Read-only__ If this Kernel is suitable for paravirtualized operations. | [optional][readonly] |
| **version** | **String** | __Filterable__, __Read-only__ Linux Kernel version. | [optional][readonly] |
| **id** | **String** | __Read-only__ The unique ID of this Kernel. | [optional][readonly] |
| **deprecated** | **Boolean** | __Filterable__, __Read-only__ If this Kernel is marked as deprecated, this field has a value of true; otherwise, this field is false. | [optional][readonly] |
| **kvm** | **Boolean** | __Filterable__, __Read-only__ If this Kernel is suitable for KVM Linodes. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetKernel200Response.new(
  built: null,
  architecture: x86_64,
  label: Latest 64 bit (4.15.7-x86_64-linode102),
  pvops: false,
  version: 4.15.7,
  id: linode/latest-64bit,
  deprecated: false,
  kvm: true
)
```

