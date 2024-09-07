# LinodeOpenapiClient::PostGroupUnassign200ResponseMembersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linode_id** | **Integer** | __Read-only__ The unique identifier for a compute instance included in the placement group. | [optional][readonly] |
| **is_compliant** | **Boolean** | The compliance status of each individual compute instance in the placement group. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostGroupUnassign200ResponseMembersInner.new(
  linode_id: 123,
  is_compliant: true
)
```

