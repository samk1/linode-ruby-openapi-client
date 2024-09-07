# LinodeOpenapiClient::GetManagedIssue200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | __Read-only__ When this Issue was created. Issues are created in response to issues detected with Managed Services, so this is also when the Issue was detected. | [optional][readonly] |
| **services** | **Array&lt;Integer&gt;** | __Read-only__ An array of Managed Service IDs that were affected by this Issue. | [optional][readonly] |
| **entity** | [**GetManagedIssue200ResponseEntity**](GetManagedIssue200ResponseEntity.md) |  | [optional] |
| **id** | **Integer** | __Read-only__ This Issue&#39;s unique ID. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetManagedIssue200Response.new(
  created: null,
  services: null,
  entity: null,
  id: 823
)
```

