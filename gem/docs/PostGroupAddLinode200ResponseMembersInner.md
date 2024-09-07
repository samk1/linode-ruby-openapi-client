# LinodeOpenapiClient::PostGroupAddLinode200ResponseMembersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_compliant** | **Boolean** | The compliance status of each individual compute instance in the placement group. | [optional] |
| **linode_id** | **Integer** | __Read-only__ The unique identifier for a compute instance included in the placement group. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostGroupAddLinode200ResponseMembersInner.new(
  is_compliant: true,
  linode_id: 123
)
```

