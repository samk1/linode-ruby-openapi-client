# LinodeOpenapiClient::PostAssignIpsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignments** | [**Array&lt;PostAssignIpsRequestAssignmentsInner&gt;**](PostAssignIpsRequestAssignmentsInner.md) | The list of assignments to make. You must have read_write access to all IPs being assigned and all Linodes being assigned to in order for the assignments to succeed. |  |
| **region** | **String** | The ID of the Region in which these assignments are to take place. All IPs and Linodes must exist in this Region. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostAssignIpsRequest.new(
  assignments: null,
  region: us-east
)
```

