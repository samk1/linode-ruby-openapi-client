# LinodeOpenapiClient::PostCloneDomainRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | __Filterable__ The new domain for the clone. Domain labels cannot be longer than 63 characters and must conform to [RFC1035](https://tools.ietf.org/html/rfc1035). Domains must be unique on Linode&#39;s platform, including across different Linode accounts; there cannot be two Domains representing the same domain. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostCloneDomainRequest.new(
  domain: example.org
)
```

