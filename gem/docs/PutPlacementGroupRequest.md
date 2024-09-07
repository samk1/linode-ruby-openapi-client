# LinodeOpenapiClient::PutPlacementGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | A unique name for the placement group. A placement group &#x60;label&#x60; has the following constraints:  - It needs to begin and end with an alphanumeric character. - It can only consist of alphanumeric characters, hyphens (&#x60;-&#x60;), underscores (&#x60;_&#x60;), or periods (&#x60;.&#x60;). | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutPlacementGroupRequest.new(
  label: PG_Miami_failover
)
```

