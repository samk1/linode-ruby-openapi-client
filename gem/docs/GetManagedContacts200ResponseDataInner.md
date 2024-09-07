# LinodeOpenapiClient::GetManagedContacts200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Read-only__ This Contact&#39;s unique ID. | [optional][readonly] |
| **name** | **String** | The name of this Contact. | [optional] |
| **email** | **String** | The address to email this Contact to alert them of issues. | [optional] |
| **group** | **String** | __Filterable__ A grouping for this Contact. This is for display purposes only. | [optional] |
| **phone** | [**GetManagedContacts200ResponseDataInnerPhone**](GetManagedContacts200ResponseDataInnerPhone.md) |  | [optional] |
| **updated** | **Time** | __Read-only__ When this Contact was last updated. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetManagedContacts200ResponseDataInner.new(
  id: 567,
  name: John Doe,
  email: john.doe@example.org,
  group: on-call,
  phone: null,
  updated: null
)
```

