# LinodeOpenapiClient::GetLinodeTypes200ResponseDataInnerAddonsBackupsPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monthly** | **Float** | The cost (in US dollars) per month to add Backups service. | [optional] |
| **hourly** | **Float** | The cost (in US dollars) per hour to add Backups service. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeTypes200ResponseDataInnerAddonsBackupsPrice.new(
  monthly: 5,
  hourly: 0.008
)
```

