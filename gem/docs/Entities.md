# LinodeOpenapiClient::Entities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linodes** | **Array&lt;Integer&gt;** | An array containing the IDs of each of the Linodes included in this transfer. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::Entities.new(
  linodes: [111,222]
)
```

