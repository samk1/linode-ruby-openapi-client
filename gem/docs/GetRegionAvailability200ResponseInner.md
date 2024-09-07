# LinodeOpenapiClient::GetRegionAvailability200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | __Filterable__ The [Region](https://techdocs.akamai.com/linode-api/reference/get-regions) ID. | [optional] |
| **available** | **Boolean** | __Filterable__ Whether the compute instance type is available in the region. | [optional] |
| **plan** | **String** | __Filterable__ The compute instance [Type](https://techdocs.akamai.com/linode-api/reference/get-linode-types) ID. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetRegionAvailability200ResponseInner.new(
  region: us-east,
  available: true,
  plan: gpu-rtx6000-1.1
)
```

