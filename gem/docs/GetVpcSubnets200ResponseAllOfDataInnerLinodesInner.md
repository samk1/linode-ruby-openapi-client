# LinodeOpenapiClient::GetVpcSubnets200ResponseAllOfDataInnerLinodesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interfaces** | [**Array&lt;GetVpcSubnets200ResponseAllOfDataInnerLinodesInnerInterfacesInner&gt;**](GetVpcSubnets200ResponseAllOfDataInnerLinodesInnerInterfacesInner.md) | VPC purpose interfaces with the subnet&#39;s &#x60;subnet_id&#x60; assigned to the Linode. | [optional] |
| **id** | **Integer** | ID of a Linode assigned to the VPC Subnet. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetVpcSubnets200ResponseAllOfDataInnerLinodesInner.new(
  interfaces: null,
  id: 111
)
```

