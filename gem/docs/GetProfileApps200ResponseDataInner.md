# LinodeOpenapiClient::GetProfileApps200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scopes** | **String** | __Read-only__ The OAuth scopes this app was authorized with.  This defines what parts of your Account the app is allowed to access. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ This authorization&#39;s ID, used for revoking access. | [optional][readonly] |
| **label** | **String** | __Filterable__, __Read-only__ The name of the application you&#39;ve authorized. | [optional][readonly] |
| **thumbnail_url** | **String** | __Read-only__ The URL at which this app&#39;s thumbnail may be accessed. | [optional][readonly] |
| **expiry** | **Time** | __Filterable__, __Read-only__ When the app&#39;s access to your account expires. If &#x60;null&#x60;, the app&#39;s access must be revoked manually. | [optional][readonly] |
| **created** | **Time** | __Filterable__, __Read-only__ When this app was authorized. | [optional][readonly] |
| **website** | **String** | __Read-only__ The website where you can get more information about this app. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetProfileApps200ResponseDataInner.new(
  scopes: linodes:read_only,
  id: 123,
  label: example-app,
  thumbnail_url: null,
  expiry: null,
  created: null,
  website: example.org
)
```

