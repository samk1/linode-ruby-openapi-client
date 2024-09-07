# LinodeOpenapiClient::PutPersonalAccessToken200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry** | **Time** | __Read-only__ When this token will expire.  Personal Access Tokens cannot be renewed, so after this time the token will be completely unusable and a new token will need to be generated.  Tokens may be created with &#x60;null&#x60; as their expiry and will never expire unless revoked. | [optional][readonly] |
| **created** | **Time** | __Filterable__, __Read-only__ The date and time this token was created. | [optional][readonly] |
| **scopes** | **String** | __Read-only__ The scopes this token was created with. These define what parts of the Account the token can be used to access. Many command-line tools, such as the [Linode CLI](https://github.com/linode/linode-cli), require tokens with access to &#x60;*&#x60;. Tokens with more restrictive scopes are generally more secure. | [optional][readonly] |
| **token** | **String** | __Read-only__ The token used to access the API.  When the token is created, the full token is returned here.  Otherwise, only the first 16 characters are returned. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ This token&#39;s unique ID, which can be used to revoke it. | [optional][readonly] |
| **label** | **String** | __Filterable__ This token&#39;s label.  This is for display purposes only, but can be used to more easily track what you&#39;re using each token for. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutPersonalAccessToken200Response.new(
  expiry: null,
  created: null,
  scopes: *,
  token: abcdefghijklmnop,
  id: 123,
  label: linode-cli
)
```

