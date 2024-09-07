# LinodeOpenapiClient::GetTrustedDevice200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | __Read-only__ When this Remember Me session was started.  This corresponds to the time of login with the \&quot;Remember Me\&quot; box checked. | [optional][readonly] |
| **expiry** | **Time** | __Read-only__ When this TrustedDevice session expires.  Sessions typically last 30 days. | [optional][readonly] |
| **user_agent** | **String** | __Read-only__ The User Agent of the browser that created this TrustedDevice session. | [optional][readonly] |
| **last_remote_addr** | **String** | __Read-only__ The last IP Address to successfully authenticate with this TrustedDevice. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The unique ID for this TrustedDevice. | [optional][readonly] |
| **last_authenticated** | **Time** | __Read-only__ The last time this TrustedDevice was successfully used to authenticate to [login.linode.com](https://login.linode.com). | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetTrustedDevice200Response.new(
  created: null,
  expiry: null,
  user_agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36 Vivaldi/2.1.1337.36,
  last_remote_addr: 203.0.113.1,
  id: 123,
  last_authenticated: null
)
```

