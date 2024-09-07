# LinodeOpenapiClient::GetUserGrants200ResponseLongviewInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **permissions** | **String** | The level of access this User has to this entity.  If null, this User has no access. | [optional] |
| **id** | **Integer** | The ID of the entity this grant applies to. | [optional] |
| **label** | **String** | __Read-only__ The current label of the entity this grant applies to, for display purposes. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetUserGrants200ResponseLongviewInner.new(
  permissions: read_only,
  id: 123,
  label: example-entity
)
```

