# LinodeOpenapiClient::PostObjectStorageSslRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_key** | **String** | The private key associated with this TLS/SSL certificate.  Line breaks must be represented as &#x60;\\n&#x60; in the string for requests (but not when using the Linode CLI) |  |
| **certificate** | **String** | Your Base64 encoded and PEM formatted SSL certificate.  Line breaks must be represented as &#x60;\\n&#x60; in the string for requests (but not when using the Linode CLI) |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostObjectStorageSslRequest.new(
  private_key: -----BEGIN PRIVATE KEY-----
PRIVATE_KEY_INFORMATION
-----END PRIVATE KEY-----,
  certificate: -----BEGIN CERTIFICATE-----
CERTIFICATE_INFORMATION
-----END CERTIFICATE-----
)
```

