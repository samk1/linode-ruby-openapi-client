# LinodeOpenapiClient::PutManagedLinodeSetting200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Read-only__ The ID of the Linode these Settings are for. | [optional][readonly] |
| **label** | **String** | __Read-only__ The label of the Linode these Settings are for. | [optional][readonly] |
| **ssh** | [**PutManagedLinodeSetting200ResponseSsh**](PutManagedLinodeSetting200ResponseSsh.md) |  | [optional] |
| **group** | **String** | __Read-only__ The group of the Linode these Settings are for. This is for display purposes only. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutManagedLinodeSetting200Response.new(
  id: 123,
  label: linode123,
  ssh: null,
  group: linodes
)
```

