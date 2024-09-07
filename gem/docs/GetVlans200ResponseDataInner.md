# LinodeOpenapiClient::GetVlans200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | __Read-only__ The date this VLAN was created. | [optional][readonly] |
| **region** | **String** | __Filterable__, __Read-only__ This VLAN&#39;s data center region.  __Note__. Currently, a VLAN can only be assigned to a Linode within the same data center region. | [optional][readonly] |
| **linodes** | **Array&lt;Integer&gt;** | __Read-only__ An array of Linode IDs attached to this VLAN. | [optional][readonly] |
| **label** | **String** | __Filterable__, __Read-only__ The name of this VLAN. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetVlans200ResponseDataInner.new(
  created: null,
  region: ap-west,
  linodes: [111,222],
  label: vlan-example
)
```

