# LinodeOpenapiClient::PostGroupAddLinodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linodes** | **Array&lt;Integer&gt;** | The &#x60;linodeId&#x60; values for individual compute instances included in the placement group. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostGroupAddLinodeRequest.new(
  linodes: 528
)
```

