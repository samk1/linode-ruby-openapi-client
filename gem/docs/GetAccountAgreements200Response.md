# LinodeOpenapiClient::GetAccountAgreements200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **privacy_policy** | **Boolean** | The acknowledgement status for Akamai&#39;s [privacy statement](https://www.akamai.com/legal/privacy-statement). | [optional] |
| **eu_model** | **Boolean** | The acknowledgement status for the [cross-border data transfer](https://www.akamai.com/legal/compliance/privacy-trust-center/cross-border-data-transfer-statement) agreement. | [optional] |
| **master_service_agreement** | **Boolean** | The acknowledgement status for Akamai&#39;s [master service agreement](https://www.linode.com/legal-msa/). | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetAccountAgreements200Response.new(
  privacy_policy: true,
  eu_model: true,
  master_service_agreement: true
)
```

