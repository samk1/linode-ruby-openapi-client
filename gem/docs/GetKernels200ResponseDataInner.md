# LinodeOpenapiClient::GetKernels200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | __Read-only__ The unique ID of this Kernel. | [optional][readonly] |
| **label** | **String** | __Filterable__, __Read-only__ The friendly name of this Kernel. | [optional][readonly] |
| **architecture** | **String** | __Filterable__, __Read-only__ The architecture of this Kernel. | [optional][readonly] |
| **built** | **Time** | __Read-only__ The date on which this Kernel was built. | [optional][readonly] |
| **kvm** | **Boolean** | __Filterable__, __Read-only__ If this Kernel is suitable for KVM Linodes. | [optional][readonly] |
| **deprecated** | **Boolean** | __Filterable__, __Read-only__ If this Kernel is marked as deprecated, this field has a value of true; otherwise, this field is false. | [optional][readonly] |
| **version** | **String** | __Filterable__, __Read-only__ Linux Kernel version. | [optional][readonly] |
| **pvops** | **Boolean** | __Filterable__, __Read-only__ If this Kernel is suitable for paravirtualized operations. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetKernels200ResponseDataInner.new(
  id: linode/latest-64bit,
  label: Latest 64 bit (4.15.7-x86_64-linode102),
  architecture: x86_64,
  built: null,
  kvm: true,
  deprecated: false,
  version: 4.15.7,
  pvops: false
)
```

