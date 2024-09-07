# LinodeOpenapiClient::ProxyUserToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | __Filterable__ The name of the token. The API automatically sets this to &#x60;&lt;username&gt;_&lt;uid&gt;_&lt;time&gt;&#x60;. It&#39;s composed of the &#x60;username&#x60; for your parent account user, the unique &#x60;uid&#x60; Akamai assigned to identify your user, and the &#x60;time&#x60; the API generated the token. This is for display purposes only, but you can use it to help track how you&#39;re using each proxy user token. | [optional] |
| **token** | **String** | __Read-only__ The proxy user token that can be used to access the API and CLI. After you [create](https://techdocs.akamai.com/linode-api/reference/post-child-account-token) a token, you can see the full token in the response. All other operations that contain this token only show the first 16 characters in their response. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The proxy user token&#39;s unique ID, which can be used to revoke it. | [optional][readonly] |
| **scopes** | **String** | __Read-only__ The scopes this token was created with. Defaults to &#x60;*&#x60;. Proxy user tokens automatically inherit all the permissions of the proxy user. | [optional][readonly] |
| **created** | **Time** | __Filterable__, __Read-only__ The date and time this token was created. | [optional][readonly] |
| **expiry** | **Time** | __Read-only__ When this token expires. This is default set to 15 minutes from the time of creation. Proxy user tokens can&#39;t be renewed. After this time, Akamai revokes the token and you need to generate a new one. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::ProxyUserToken.new(
  label: parent1_1234_2024-05-01T00:01:01,
  token: abcdefghijklmnop,
  id: 918,
  scopes: *,
  created: null,
  expiry: null
)
```

