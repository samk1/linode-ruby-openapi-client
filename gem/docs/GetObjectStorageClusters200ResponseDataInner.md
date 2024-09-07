# LinodeOpenapiClient::GetObjectStorageClusters200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **static_site_domain** | **String** | The base URL for this cluster used when hosting static sites. | [optional] |
| **id** | **String** | The unique ID for this cluster. | [optional] |
| **domain** | **String** | The base URL for this cluster, used for connecting with third-party clients. | [optional] |
| **region** | **String** | The region where this cluster is located. | [optional] |
| **status** | **String** | This cluster&#39;s status. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetObjectStorageClusters200ResponseDataInner.new(
  static_site_domain: website-us-east-1.linodeobjects.com,
  id: us-east-1,
  domain: us-east-1.linodeobjects.com,
  region: us-east,
  status: available
)
```

