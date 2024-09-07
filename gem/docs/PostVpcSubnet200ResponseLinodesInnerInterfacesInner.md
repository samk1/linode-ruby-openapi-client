# LinodeOpenapiClient::PostVpcSubnet200ResponseLinodesInnerInterfacesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Returns &#x60;true&#x60; if the Interface is in use, meaning that the Linode was powered on using the Configuration Profile to which the Interface belongs. Otherwise returns &#x60;false&#x60;. | [optional] |
| **id** | **Integer** | ID of the interface. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostVpcSubnet200ResponseLinodesInnerInterfacesInner.new(
  active: true,
  id: 421
)
```

