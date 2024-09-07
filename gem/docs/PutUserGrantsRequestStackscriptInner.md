# LinodeOpenapiClient::PutUserGrantsRequestStackscriptInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **permissions** | **String** | The level of access this User has to this entity.  If null, this User has no access. | [optional] |
| **label** | **String** | __Read-only__ The current label of the entity this grant applies to, for display purposes. | [optional][readonly] |
| **id** | **Integer** | The ID of the entity this grant applies to. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutUserGrantsRequestStackscriptInner.new(
  permissions: read_only,
  label: example-entity,
  id: 123
)
```

