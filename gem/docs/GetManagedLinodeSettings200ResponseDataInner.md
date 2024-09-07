# LinodeOpenapiClient::GetManagedLinodeSettings200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | __Read-only__ The label of the Linode these Settings are for. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The ID of the Linode these Settings are for. | [optional][readonly] |
| **group** | **String** | __Read-only__ The group of the Linode these Settings are for. This is for display purposes only. | [optional][readonly] |
| **ssh** | [**GetManagedLinodeSettings200ResponseDataInnerSsh**](GetManagedLinodeSettings200ResponseDataInnerSsh.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetManagedLinodeSettings200ResponseDataInner.new(
  label: linode123,
  id: 123,
  group: linodes,
  ssh: null
)
```

