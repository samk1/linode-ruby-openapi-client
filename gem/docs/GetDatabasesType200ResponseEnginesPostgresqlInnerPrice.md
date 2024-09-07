# LinodeOpenapiClient::GetDatabasesType200ResponseEnginesPostgresqlInnerPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hourly** | **Float** | Cost (in US dollars) per hour for this subscription tier. | [optional] |
| **monthly** | **Float** | Maximum cost (in US dollars) per month for this subscription tier. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesType200ResponseEnginesPostgresqlInnerPrice.new(
  hourly: 0.03,
  monthly: 20
)
```

