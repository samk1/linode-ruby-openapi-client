# LinodeOpenapiClient::PostVpcSubnet200ResponseLinodesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of a Linode assigned to the VPC Subnet. | [optional] |
| **interfaces** | [**Array&lt;PostVpcSubnet200ResponseLinodesInnerInterfacesInner&gt;**](PostVpcSubnet200ResponseLinodesInnerInterfacesInner.md) | VPC purpose interfaces with the subnet&#39;s &#x60;subnet_id&#x60; assigned to the Linode. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostVpcSubnet200ResponseLinodesInner.new(
  id: 111,
  interfaces: null
)
```

