# LinodeOpenapiClient::GrantsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | [**Array&lt;PutUserGrantsRequestStackscriptInner&gt;**](PutUserGrantsRequestStackscriptInner.md) | The grants this User has for each Domain that is owned by this Account. | [optional] |
| **longview** | [**Array&lt;GetUserGrants200ResponseStackscriptInner&gt;**](GetUserGrants200ResponseStackscriptInner.md) | The grants this User has for each Longview Client that is owned by this Account. | [optional] |
| **loadbalancer** | [**Array&lt;PutUserGrantsRequestStackscriptInner&gt;**](PutUserGrantsRequestStackscriptInner.md) | The grants this User has for each Cloud Load Balancer that is owned by this Account. | [optional] |
| **vpc** | [**Array&lt;PutUserGrantsRequestStackscriptInner&gt;**](PutUserGrantsRequestStackscriptInner.md) | The grants this User has for each VPC that is owned by this Account. | [optional] |
| **volume** | [**Array&lt;PutUserGrantsRequestStackscriptInner&gt;**](PutUserGrantsRequestStackscriptInner.md) | The grants this User has for each Block Storage Volume that is owned by this Account. | [optional] |
| **stackscript** | [**Array&lt;GetUserGrants200ResponseLongviewInner&gt;**](GetUserGrants200ResponseLongviewInner.md) | The grants this User has for each StackScript that is owned by this Account. | [optional] |
| **nodebalancer** | [**Array&lt;GetUserGrants200ResponseStackscriptInner&gt;**](GetUserGrants200ResponseStackscriptInner.md) | The grants this User has for each NodeBalancer that is owned by this Account. | [optional] |
| **database** | [**Array&lt;GetUserGrants200ResponseLongviewInner&gt;**](GetUserGrants200ResponseLongviewInner.md) | The grants this User has for each Database that is owned by this Account. | [optional] |
| **image** | [**Array&lt;GetUserGrants200ResponsePlacementGroupInner&gt;**](GetUserGrants200ResponsePlacementGroupInner.md) | The grants this User has for each Image that is owned by this Account. | [optional] |
| **linode** | [**Array&lt;GetUserGrants200ResponseLongviewInner&gt;**](GetUserGrants200ResponseLongviewInner.md) | The grants this User has for each Linode that is owned by this Account. | [optional] |
| **placement_group** | [**Array&lt;GetUserGrants200ResponseStackscriptInner&gt;**](GetUserGrants200ResponseStackscriptInner.md) | The grants this User has for each Placement Group that is owned by this Account. | [optional] |
| **global** | [**GrantsResponseGlobal**](GrantsResponseGlobal.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GrantsResponse.new(
  domain: null,
  longview: null,
  loadbalancer: null,
  vpc: null,
  volume: null,
  stackscript: null,
  nodebalancer: null,
  database: null,
  image: null,
  linode: null,
  placement_group: null,
  global: null
)
```

