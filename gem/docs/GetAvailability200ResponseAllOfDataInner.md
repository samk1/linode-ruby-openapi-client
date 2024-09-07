# LinodeOpenapiClient::GetAvailability200ResponseAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Array&lt;String&gt;** | __Read-only__ A list of services _available_ to your account in the &#x60;region&#x60;. | [optional][readonly] |
| **unavailable** | **Array&lt;String&gt;** | __Read-only__ A list of services _unavailable_ to your account in the &#x60;region&#x60;. | [optional][readonly] |
| **region** | **String** | __Read-only__ The Akamai cloud computing data center (region), represented by a slug value. You can view a full list of regions and their associated slugs with the [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions) operation. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetAvailability200ResponseAllOfDataInner.new(
  available: [&quot;Linodes&quot;,&quot;NodeBalancers&quot;],
  unavailable: [&quot;Kubernetes&quot;,&quot;Block Storage&quot;],
  region: us-east
)
```

