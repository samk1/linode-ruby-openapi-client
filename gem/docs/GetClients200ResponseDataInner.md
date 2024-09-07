# LinodeOpenapiClient::GetClients200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redirect_uri** | **String** | The location a successful log in from [login.linode.com](https://login.linode.com) should be redirected to for this client.  The receiver of this redirect should be ready to accept an OAuth exchange code and finish the OAuth exchange. | [optional] |
| **secret** | **String** | __Read-only__ The OAuth Client secret, used in the OAuth exchange.  This is returned as &#x60;&lt;REDACTED&gt;&#x60; except when an OAuth Client is created or its secret is reset.  This is a secret, and should not be shared or disclosed publicly. | [optional][readonly] |
| **id** | **String** | __Read-only__ The OAuth Client ID.  This is used to identify the client, and is a publicly-known value (it is not a secret). | [optional][readonly] |
| **status** | **String** | __Read-only__ The status of this application.  &#x60;active&#x60; by default. | [optional][readonly] |
| **thumbnail_url** | **String** | __Read-only__ The URL where this client&#39;s thumbnail may be viewed, or &#x60;null&#x60; if this client does not have a thumbnail set. | [optional][readonly] |
| **label** | **String** | __Filterable__ The name of this application.  This will be presented to users when they are asked to grant it access to their Account. | [optional] |
| **public** | **Boolean** | __Filterable__ If this is a public or private OAuth Client.  Public clients have a slightly different authentication workflow than private clients.  See the [OAuth spec](https://oauth.net/2/) for more details. | [optional][default to false] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetClients200ResponseDataInner.new(
  redirect_uri: https://example.org/oauth/callback,
  secret: &lt;REDACTED&gt;,
  id: 2737bf16b39ab5d7b4a1,
  status: active,
  thumbnail_url: https://api.linode.com/v4/account/clients/2737bf16b39ab5d7b4a1/thumbnail,
  label: Test_Client_1,
  public: false
)
```

