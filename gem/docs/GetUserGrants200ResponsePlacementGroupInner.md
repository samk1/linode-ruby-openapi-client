# LinodeOpenapiClient::GetUserGrants200ResponsePlacementGroupInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | __Read-only__ The current label of the entity this grant applies to, for display purposes. | [optional][readonly] |
| **id** | **Integer** | The ID of the entity this grant applies to. | [optional] |
| **permissions** | **String** | The level of access this User has to this entity.  If null, this User has no access. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetUserGrants200ResponsePlacementGroupInner.new(
  label: example-entity,
  id: 123,
  permissions: read_only
)
```

