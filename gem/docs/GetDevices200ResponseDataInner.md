# LinodeOpenapiClient::GetDevices200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_authenticated** | **Time** | __Read-only__ The last time this TrustedDevice was successfully used to authenticate to [login.linode.com](https://login.linode.com). | [optional][readonly] |
| **last_remote_addr** | **String** | __Read-only__ The last IP Address to successfully authenticate with this TrustedDevice. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The unique ID for this TrustedDevice. | [optional][readonly] |
| **user_agent** | **String** | __Read-only__ The User Agent of the browser that created this TrustedDevice session. | [optional][readonly] |
| **expiry** | **Time** | __Read-only__ When this TrustedDevice session expires.  Sessions typically last 30 days. | [optional][readonly] |
| **created** | **Time** | __Read-only__ When this Remember Me session was started.  This corresponds to the time of login with the \&quot;Remember Me\&quot; box checked. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDevices200ResponseDataInner.new(
  last_authenticated: null,
  last_remote_addr: 203.0.113.1,
  id: 123,
  user_agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36 Vivaldi/2.1.1337.36,
  expiry: null,
  created: null
)
```

