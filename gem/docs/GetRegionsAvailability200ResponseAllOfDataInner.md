# LinodeOpenapiClient::GetRegionsAvailability200ResponseAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan** | **String** | __Filterable__ The compute instance [Type](https://techdocs.akamai.com/linode-api/reference/get-linode-types) ID. | [optional] |
| **available** | **Boolean** | __Filterable__ Whether the compute instance type is available in the region. | [optional] |
| **region** | **String** | __Filterable__ The [Region](https://techdocs.akamai.com/linode-api/reference/get-regions) ID. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetRegionsAvailability200ResponseAllOfDataInner.new(
  plan: gpu-rtx6000-1.1,
  available: true,
  region: us-east
)
```

