# LinodeOpenapiClient::GetManagedSshKey200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ssh_key** | **String** | __Read-only__ The unique SSH public key assigned to your Linode account&#39;s Managed service. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetManagedSshKey200Response.new(
  ssh_key: ssh-rsa AAAAB...oD2ZQ&#x3D;&#x3D; managedservices@linode
)
```

