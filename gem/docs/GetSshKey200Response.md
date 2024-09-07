# LinodeOpenapiClient::GetSshKey200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | __Read-only__ The date this key was added. | [optional][readonly] |
| **label** | **String** | A label for the SSH Key. | [optional] |
| **ssh_key** | **String** | The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.  Accepted formats:  - ssh-dss - ssh-rsa - ecdsa-sha2-nistp - ssh-ed25519 - sk-ecdsa-sha2-nistp256 (Akamai-specific) | [optional] |
| **id** | **Integer** | __Read-only__ The unique identifier of an SSH Key object. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetSshKey200Response.new(
  created: null,
  label: My SSH Key,
  ssh_key: ssh-rsa AAAA_valid_public_ssh_key_123456785&#x3D;&#x3D; user@their-computer,
  id: 42
)
```

