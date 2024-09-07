# LinodeOpenapiClient::PostPersonalAccessTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry** | **Time** | When this token should be valid until.  If omitted, the new token will be valid until it is manually revoked. | [optional] |
| **scopes** | **String** | The access [scopes](https://techdocs.akamai.com/linode-api/reference/get-started#oauth-reference) to grant to the created token. These cannot be changed after creation, and may not exceed the scopes of the acting token.  If omitted or entered with a wildcard character (&#x60;*&#x60;), the new token will have the same scopes as the acting token.  Multiple scopes are separated by a space character (&#x60; &#x60;).  For example, &#x60;linodes:read_write account:read_only&#x60;. | [optional] |
| **label** | **String** | __Filterable__ This token&#39;s label.  This is for display purposes only, but can be used to more easily track what you&#39;re using each token for. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostPersonalAccessTokenRequest.new(
  expiry: null,
  scopes: *,
  label: linode-cli
)
```

