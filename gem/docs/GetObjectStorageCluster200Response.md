# LinodeOpenapiClient::GetObjectStorageCluster200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | The region where this cluster is located. | [optional] |
| **domain** | **String** | The base URL for this cluster, used for connecting with third-party clients. | [optional] |
| **status** | **String** | This cluster&#39;s status. | [optional] |
| **id** | **String** | The unique ID for this cluster. | [optional] |
| **static_site_domain** | **String** | The base URL for this cluster used when hosting static sites. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetObjectStorageCluster200Response.new(
  region: us-east,
  domain: us-east-1.linodeobjects.com,
  status: available,
  id: us-east-1,
  static_site_domain: website-us-east-1.linodeobjects.com
)
```

