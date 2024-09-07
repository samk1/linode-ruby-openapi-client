# LinodeOpenapiClient::PutUserGrantsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **loadbalancer** | [**Array&lt;GetUserGrants200ResponseLongviewInner&gt;**](GetUserGrants200ResponseLongviewInner.md) | The grants this User has for each Cloud Load Balancer that is owned by this Account. | [optional] |
| **longview** | [**Array&lt;GetUserGrants200ResponseLongviewInner&gt;**](GetUserGrants200ResponseLongviewInner.md) | The grants this User has for each Longview Client that is owned by this Account. | [optional] |
| **linode** | [**Array&lt;GetUserGrants200ResponsePlacementGroupInner&gt;**](GetUserGrants200ResponsePlacementGroupInner.md) | The grants this User has for each Linode that is owned by this Account. | [optional] |
| **placement_group** | [**Array&lt;GetUserGrants200ResponsePlacementGroupInner&gt;**](GetUserGrants200ResponsePlacementGroupInner.md) | The grants this User has for each Placement Group that is owned by this Account. | [optional] |
| **image** | [**Array&lt;GetUserGrants200ResponseLongviewInner&gt;**](GetUserGrants200ResponseLongviewInner.md) | The grants this User has for each Image that is owned by this Account. | [optional] |
| **database** | [**Array&lt;GetUserGrants200ResponsePlacementGroupInner&gt;**](GetUserGrants200ResponsePlacementGroupInner.md) | The grants this User has for each Database that is owned by this Account. | [optional] |
| **volume** | [**Array&lt;GetUserGrants200ResponseStackscriptInner&gt;**](GetUserGrants200ResponseStackscriptInner.md) | The grants this User has for each Block Storage Volume that is owned by this Account. | [optional] |
| **domain** | [**Array&lt;GetUserGrants200ResponsePlacementGroupInner&gt;**](GetUserGrants200ResponsePlacementGroupInner.md) | The grants this User has for each Domain that is owned by this Account. | [optional] |
| **global** | [**PutUserGrantsRequestGlobal**](PutUserGrantsRequestGlobal.md) |  | [optional] |
| **stackscript** | [**Array&lt;PutUserGrantsRequestStackscriptInner&gt;**](PutUserGrantsRequestStackscriptInner.md) | The grants this User has for each StackScript that is owned by this Account. | [optional] |
| **nodebalancer** | [**Array&lt;GetUserGrants200ResponseLongviewInner&gt;**](GetUserGrants200ResponseLongviewInner.md) | The grants this User has for each NodeBalancer that is owned by this Account. | [optional] |
| **vpc** | [**Array&lt;PutUserGrantsRequestStackscriptInner&gt;**](PutUserGrantsRequestStackscriptInner.md) | The grants this User has for each VPC that is owned by this Account. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutUserGrantsRequest.new(
  loadbalancer: null,
  longview: null,
  linode: null,
  placement_group: null,
  image: null,
  database: null,
  volume: null,
  domain: null,
  global: null,
  stackscript: null,
  nodebalancer: null,
  vpc: null
)
```

