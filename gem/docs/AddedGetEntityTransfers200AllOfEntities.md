# LinodeOpenapiClient::AddedGetEntityTransfers200AllOfEntities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linodes** | **Array&lt;Integer&gt;** | An array containing the IDs of each of the Linodes included in this transfer. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetEntityTransfers200AllOfEntities.new(
  linodes: [111,222]
)
```

