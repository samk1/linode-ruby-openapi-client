# LinodeOpenapiClient::GetObjectStorageTransfer200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **used** | **Integer** | __Read-only__ The amount of outbound data transfer used by your account&#39;s Object Storage buckets, in bytes, for the current month&#39;s billing cycle. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetObjectStorageTransfer200Response.new(
  used: 12956600198
)
```

