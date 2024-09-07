# LinodeOpenapiClient::Agreements

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **master_service_agreement** | **Boolean** | The acknowledgement status for Akamai&#39;s [master service agreement](https://www.linode.com/legal-msa/). | [optional] |
| **eu_model** | **Boolean** | The acknowledgement status for the [cross-border data transfer](https://www.akamai.com/legal/compliance/privacy-trust-center/cross-border-data-transfer-statement) agreement. | [optional] |
| **privacy_policy** | **Boolean** | The acknowledgement status for Akamai&#39;s [privacy statement](https://www.akamai.com/legal/privacy-statement). | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::Agreements.new(
  master_service_agreement: true,
  eu_model: true,
  privacy_policy: true
)
```

