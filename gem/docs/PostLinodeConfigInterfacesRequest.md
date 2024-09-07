# LinodeOpenapiClient::PostLinodeConfigInterfacesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;Integer&gt;** | An ordered array of existing Configuration Profile Interface &#x60;id&#x60;s.  - All current Interface &#x60;id&#x60;s must be present in the array. - If the Configuration Profile contains Interfaces and is active on the Linode, the Linode must first be shut down prior to running this operation. - Reordering takes effect after rebooting the Linode with this Configuration Profile.  The position in the array determines which of the Linode&#39;s network Interfaces is configured:  - First [0]:  eth0 - Second [1]: eth1 - Third [2]:  eth2 |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLinodeConfigInterfacesRequest.new(
  ids: null
)
```

