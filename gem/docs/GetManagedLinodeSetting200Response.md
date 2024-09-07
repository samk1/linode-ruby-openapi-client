# LinodeOpenapiClient::GetManagedLinodeSetting200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ssh** | [**GetManagedLinodeSetting200ResponseSsh**](GetManagedLinodeSetting200ResponseSsh.md) |  | [optional] |
| **group** | **String** | __Read-only__ The group of the Linode these Settings are for. This is for display purposes only. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The ID of the Linode these Settings are for. | [optional][readonly] |
| **label** | **String** | __Read-only__ The label of the Linode these Settings are for. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetManagedLinodeSetting200Response.new(
  ssh: null,
  group: linodes,
  id: 123,
  label: linode123
)
```

