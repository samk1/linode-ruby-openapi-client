# LinodeOpenapiClient::PutAccountSettings200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object_storage** | **String** | __Read-only__ A string describing the status of this account&#39;s Object Storage service enrollment. | [optional][readonly][default to &#39;disabled&#39;] |
| **longview_subscription** | **String** | __Read-only__ The Longview Pro tier you are currently subscribed to. The value must be a [Longview subscription](https://techdocs.akamai.com/linode-api/reference/get-longview-subscriptions) ID or &#x60;null&#x60; for Longview Free. | [optional][readonly] |
| **network_helper** | **Boolean** | Enables network helper across all users by default for new Linodes and Linode Configs. | [optional] |
| **backups_enabled** | **Boolean** | Account-wide backups default.  If &#x60;true&#x60;, all Linodes created will automatically be enrolled in the Backups service.  If &#x60;false&#x60;, Linodes will not be enrolled by default, but may still be enrolled on creation or later. | [optional] |
| **managed** | **Boolean** | __Read-only__ Our 24/7 incident response service. This robust, multi-homed monitoring system distributes monitoring checks to ensure that your servers remain online and available at all times. Linode Managed can monitor any service or software stack reachable over TCP or HTTP. Once you add a service to Linode Managed, we&#39;ll monitor it for connectivity, response, and total request time. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutAccountSettings200Response.new(
  object_storage: active,
  longview_subscription: longview-3,
  network_helper: false,
  backups_enabled: true,
  managed: true
)
```

