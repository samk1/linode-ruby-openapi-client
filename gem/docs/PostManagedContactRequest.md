# LinodeOpenapiClient::PostManagedContactRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The address to email this Contact to alert them of issues. | [optional] |
| **name** | **String** | The name of this Contact. | [optional] |
| **id** | **Integer** | __Read-only__ This Contact&#39;s unique ID. | [optional][readonly] |
| **updated** | **Time** | __Read-only__ When this Contact was last updated. | [optional][readonly] |
| **phone** | [**GetManagedContacts200ResponseDataInnerPhone**](GetManagedContacts200ResponseDataInnerPhone.md) |  | [optional] |
| **group** | **String** | __Filterable__ A grouping for this Contact. This is for display purposes only. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostManagedContactRequest.new(
  email: john.doe@example.org,
  name: John Doe,
  id: 567,
  updated: null,
  phone: null,
  group: on-call
)
```

