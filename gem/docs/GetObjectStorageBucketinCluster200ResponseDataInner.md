# LinodeOpenapiClient::GetObjectStorageBucketinCluster200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **objects** | **Integer** | The number of objects stored in this bucket. | [optional] |
| **label** | **String** | The name of this bucket. | [optional] |
| **hostname** | **String** | The hostname where this bucket can be accessed. This hostname can be accessed through a browser if the bucket is made public. | [optional] |
| **created** | **Time** | When this bucket was created. | [optional] |
| **size** | **Integer** | The size of the bucket in bytes. | [optional] |
| **cluster** | **String** | __Deprecated__ The legacy &#x60;clusterId&#x60; equivalent for the &#x60;regionId&#x60; where this bucket lives. The API maintains this for backward compatibility.  &gt; 📘 &gt; &gt; - This value and the &#x60;regionId&#x60; are interchangeable when used in requests. Best practice is to use the &#x60;regionId&#x60;. &gt; &gt; - This value is empty for newer regions that don&#39;t have a legacy &#x60;clusterId&#x60;. | [optional] |
| **region** | **String** | The &#x60;id&#x60; of the [region](https://techdocs.akamai.com/linode-api/reference/get-regions) where this Object Storage bucket lives. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetObjectStorageBucketinCluster200ResponseDataInner.new(
  objects: 4,
  label: example-bucket,
  hostname: example-bucket-1.us-east-12.linodeobjects.com,
  created: null,
  size: 188318981,
  cluster: us-east-1,
  region: us-east
)
```

