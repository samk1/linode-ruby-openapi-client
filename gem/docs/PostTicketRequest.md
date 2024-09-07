# LinodeOpenapiClient::PostTicketRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **Integer** | The ID of the Domain this ticket is regarding, if relevant. | [optional] |
| **nodebalancer_id** | **Integer** | The ID of the NodeBalancer this ticket is regarding, if relevant. | [optional] |
| **lkecluster_id** | **Integer** | The ID of the Kubernetes cluster this ticket is regarding, if relevant. | [optional] |
| **summary** | **String** | The summary or title for this SupportTicket. |  |
| **firewall_id** | **Integer** | The ID of the Firewall this ticket is regarding, if relevant. | [optional] |
| **description** | **String** | The full details of the issue or question. |  |
| **database_id** | **Integer** | The ID of the Managed Database this ticket is regarding, if relevant. | [optional] |
| **vpc_id** | **Integer** | The ID of the VPC this ticket is regarding, if relevant. | [optional] |
| **longviewclient_id** | **Integer** | The ID of the Longview client this ticket is regarding, if relevant. | [optional] |
| **region** | **String** | The [Region](https://techdocs.akamai.com/linode-api/reference/get-regions) ID for the associated VLAN this ticket is regarding.  Only allowed when submitting a VLAN ticket. | [optional] |
| **managed_issue** | **Boolean** | Designates if this ticket is related to a [Managed service](https://www.linode.com/products/managed/). If &#x60;true&#x60;, the following constraints will apply:  - No ID attributes (i.e. &#x60;linode_id&#x60;, &#x60;domain_id&#x60;, etc.) should be provided with this request. - Your account must have a managed service [enabled](https://techdocs.akamai.com/linode-api/reference/post-enable-managed-service). | [optional] |
| **volume_id** | **Integer** | The ID of the Volume this ticket is regarding, if relevant. | [optional] |
| **linode_id** | **Integer** | The ID of the Linode this ticket is regarding, if relevant. | [optional] |
| **vlan** | **String** | The label of the VLAN this ticket is regarding, if relevant. To view your VLANs, run the [List VLANs](https://techdocs.akamai.com/linode-api/reference/get-vlans)) operation.  Requires a specified &#x60;region&#x60; to identify the VLAN. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostTicketRequest.new(
  domain_id: null,
  nodebalancer_id: null,
  lkecluster_id: 123,
  summary: Having trouble resetting root password on my Linode,
  firewall_id: null,
  description: I&#39;m having trouble setting the root password on my Linode. I tried following the instructions but something is not working and I&#39;m not sure what I&#39;m doing wrong. Can you please help me figure out how I can reset it?,
  database_id: null,
  vpc_id: null,
  longviewclient_id: null,
  region: null,
  managed_issue: false,
  volume_id: null,
  linode_id: 123,
  vlan: null
)
```

