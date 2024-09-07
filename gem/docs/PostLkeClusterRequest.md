# LinodeOpenapiClient::PostLkeClusterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of tags applied to the Kubernetes cluster. Tags are for organizational purposes only. | [optional] |
| **region** | **String** | __Filterable__ This Kubernetes cluster&#39;s location. |  |
| **label** | **String** | __Filterable__ This Kubernetes cluster&#39;s unique label for display purposes only. Labels have the following constraints:    - UTF-8 characters will be returned by the API using escape sequences of their Unicode code points. For example, the Japanese character _か_ is 3 bytes in UTF-8 (&#x60;0xE382AB&#x60;). Its Unicode code point is 2 bytes (&#x60;0x30AB&#x60;). APIv4 supports this character and the API will return it as the escape sequence using six 1 byte characters which represent 2 bytes of Unicode code point (&#x60;\&quot;\\u30ab\&quot;&#x60;).    - 4 byte UTF-8 characters are not supported.    - If the label is entirely composed of UTF-8 characters, the API response will return the code points using up to 193 1 byte characters. |  |
| **control_plane** | [**PostLkeClusterRequestControlPlane**](PostLkeClusterRequestControlPlane.md) |  | [optional] |
| **k8s_version** | **String** | __Filterable__ The desired Kubernetes version for this Kubernetes cluster in the format of &amp;lt;major&amp;gt;.&amp;lt;minor&amp;gt;, and the latest supported patch version will be deployed. |  |
| **node_pools** | [**Array&lt;PostLkeClusterRequestNodePoolsInner&gt;**](PostLkeClusterRequestNodePoolsInner.md) |  |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLkeClusterRequest.new(
  tags: [&quot;ecomm&quot;,&quot;blogs&quot;],
  region: us-central,
  label: lkecluster12345,
  control_plane: null,
  k8s_version: 1.27,
  node_pools: null
)
```

