# LinodeOpenapiClient::PutManagedContact200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updated** | **Time** | __Read-only__ When this Contact was last updated. | [optional][readonly] |
| **group** | **String** | __Filterable__ A grouping for this Contact. This is for display purposes only. | [optional] |
| **phone** | [**PostManagedContact200ResponsePhone**](PostManagedContact200ResponsePhone.md) |  | [optional] |
| **email** | **String** | The address to email this Contact to alert them of issues. | [optional] |
| **id** | **Integer** | __Read-only__ This Contact&#39;s unique ID. | [optional][readonly] |
| **name** | **String** | The name of this Contact. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutManagedContact200Response.new(
  updated: null,
  group: on-call,
  phone: null,
  email: john.doe@example.org,
  id: 567,
  name: John Doe
)
```

