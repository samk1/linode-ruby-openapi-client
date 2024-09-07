# LinodeOpenapiClient::GetManagedLinodeSetting200ResponseSsh

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | The IP Linode special forces should use to access this Linode when responding to an Issue.  By default, any of a Linode&#39;s IP addresses can be used for incident response access. | [optional][default to &#39;any&#39;] |
| **user** | **String** | The specific user, if any, Linode&#39;s special forces should use when accessing this Linode to respond to an issue.  The default &#x60;null&#x60; value corresponds to the root user. | [optional] |
| **port** | **Integer** | The port Linode special forces should use to access this Linode over ssh to respond to an Issue.  The default &#x60;null&#x60; value corresponds to port 22. | [optional] |
| **access** | **Boolean** | If true, Linode special forces may access this Linode over ssh to respond to Issues. | [optional][default to true] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetManagedLinodeSetting200ResponseSsh.new(
  ip: 203.0.113.1,
  user: linode,
  port: 22,
  access: true
)
```

