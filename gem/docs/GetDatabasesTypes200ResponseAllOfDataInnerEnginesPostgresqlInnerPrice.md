# LinodeOpenapiClient::GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInnerPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monthly** | **Float** | Maximum cost (in US dollars) per month for this subscription tier. | [optional] |
| **hourly** | **Float** | Cost (in US dollars) per hour for this subscription tier. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInnerPrice.new(
  monthly: 20,
  hourly: 0.03
)
```

