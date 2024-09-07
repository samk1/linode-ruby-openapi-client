# LinodeOpenapiClient::GetVpcSubnets200ResponseAllOfDataInnerLinodesInnerInterfacesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the interface. | [optional] |
| **active** | **Boolean** | Returns &#x60;true&#x60; if the Interface is in use, meaning that the Linode was powered on using the Configuration Profile to which the Interface belongs. Otherwise returns &#x60;false&#x60;. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetVpcSubnets200ResponseAllOfDataInnerLinodesInnerInterfacesInner.new(
  id: 421,
  active: true
)
```

