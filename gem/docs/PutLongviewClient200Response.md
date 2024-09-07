# LinodeOpenapiClient::PutLongviewClient200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **install_code** | **String** | __Read-only__ The install code for this Client, used when configuring the Longview Client application on your Linode.  Returns as &#x60;[REDACTED]&#x60; if you do not have read-write access to this client. | [optional][readonly] |
| **created** | **Time** | __Read-only__ When this Longview Client was created. | [optional][readonly] |
| **updated** | **Time** | __Read-only__ When this Longview Client was last updated. | [optional][readonly] |
| **label** | **String** | __Filterable__ This Client&#39;s unique label. This is for display purposes only. | [optional] |
| **id** | **Integer** | __Read-only__ This Client&#39;s unique ID. | [optional][readonly] |
| **api_key** | **String** | __Read-only__ The API key for this Client, used when configuring the Longview Client application on your Linode.  Returns as &#x60;[REDACTED]&#x60; if you do not have read-write access to this client. | [optional][readonly] |
| **apps** | [**PutLongviewClient200ResponseApps**](PutLongviewClient200ResponseApps.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLongviewClient200Response.new(
  install_code: BD1B5605-BF5E-D385-BA07AD518BE7F321,
  created: null,
  updated: null,
  label: client789,
  id: 789,
  api_key: BD1B4B54-D752-A76D-5A9BD8A17F39DB61,
  apps: null
)
```

