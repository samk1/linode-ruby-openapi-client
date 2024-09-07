# LinodeOpenapiClient::GetMaintenance200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity** | [**GetMaintenance200ResponseDataInnerEntity**](GetMaintenance200ResponseDataInnerEntity.md) |  | [optional] |
| **type** | **String** | __Filterable__ The type of maintenance. | [optional] |
| **_when** | **Time** | __Filterable__ When the maintenance will begin.  [Filterable](https://techdocs.akamai.com/linode-api/reference/filtering-and-sorting) with the following parameters:  - A single value in date-time string format (&#x60;%Y-%m-%dT%H:%M:%S&#x60;), which returns only matches to that value.  - A dictionary containing pairs of inequality operator string keys (&#x60;+or&#x60;, &#x60;+gt&#x60;, &#x60;+gte&#x60;, &#x60;+lt&#x60;, &#x60;+lte&#x60;, or &#x60;+neq&#x60;) and single date-time string format values (&#x60;%Y-%m-%dT%H:%M:%S&#x60;). &#x60;+or&#x60; accepts an array of values that may consist of single date-time strings or dictionaries of inequality operator pairs. | [optional] |
| **reason** | **String** | The reason maintenance is being performed. | [optional] |
| **status** | **String** | __Filterable__ The maintenance status.  Maintenance progresses in the following sequence: pending, started, then completed. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetMaintenance200ResponseDataInner.new(
  entity: null,
  type: reboot,
  _when: null,
  reason: This maintenance will allow us to update the BIOS on the host&#39;s motherboard.,
  status: started
)
```

