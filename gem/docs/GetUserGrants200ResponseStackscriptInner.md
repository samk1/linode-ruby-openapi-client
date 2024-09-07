# LinodeOpenapiClient::GetUserGrants200ResponseStackscriptInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the entity this grant applies to. | [optional] |
| **label** | **String** | __Read-only__ The current label of the entity this grant applies to, for display purposes. | [optional][readonly] |
| **permissions** | **String** | The level of access this User has to this entity.  If null, this User has no access. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetUserGrants200ResponseStackscriptInner.new(
  id: 123,
  label: example-entity,
  permissions: read_only
)
```

