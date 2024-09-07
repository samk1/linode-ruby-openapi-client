# LinodeOpenapiClient::PostObjectStorageObjectUrl200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The signed URL to perform the request at. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostObjectStorageObjectUrl200Response.new(
  url: https://us-east-1.linodeobjects.com/example-bucket/example?Signature&#x3D;qr98TEucCntPgEG%2BsZQGDsJg93c%3D&amp;Expires&#x3D;1567609905&amp;AWSAccessKeyId&#x3D;G4YAF81XWY61DQM94SE0
)
```

