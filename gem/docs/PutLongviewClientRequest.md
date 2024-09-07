# LinodeOpenapiClient::PutLongviewClientRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apps** | [**GetLongviewClient200ResponseApps**](GetLongviewClient200ResponseApps.md) |  | [optional] |
| **label** | **String** | __Filterable__ This Client&#39;s unique label. This is for display purposes only. | [optional] |
| **updated** | **Time** | __Read-only__ When this Longview Client was last updated. | [optional][readonly] |
| **install_code** | **String** | __Read-only__ The install code for this Client, used when configuring the Longview Client application on your Linode.  Returns as &#x60;[REDACTED]&#x60; if you do not have read-write access to this client. | [optional][readonly] |
| **api_key** | **String** | __Read-only__ The API key for this Client, used when configuring the Longview Client application on your Linode.  Returns as &#x60;[REDACTED]&#x60; if you do not have read-write access to this client. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ This Client&#39;s unique ID. | [optional][readonly] |
| **created** | **Time** | __Read-only__ When this Longview Client was created. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLongviewClientRequest.new(
  apps: null,
  label: client789,
  updated: null,
  install_code: BD1B5605-BF5E-D385-BA07AD518BE7F321,
  api_key: BD1B4B54-D752-A76D-5A9BD8A17F39DB61,
  id: 789,
  created: null
)
```

