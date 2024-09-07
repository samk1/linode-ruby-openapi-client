# LinodeOpenapiClient::PostAddSshKey200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | __Read-only__ The date this key was added. | [optional][readonly] |
| **label** | **String** | A label for the SSH Key. | [optional] |
| **id** | **Integer** | __Read-only__ The unique identifier of an SSH Key object. | [optional][readonly] |
| **ssh_key** | **String** | The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.  Accepted formats:  - ssh-dss - ssh-rsa - ecdsa-sha2-nistp - ssh-ed25519 - sk-ecdsa-sha2-nistp256 (Akamai-specific) | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostAddSshKey200Response.new(
  created: null,
  label: My SSH Key,
  id: 42,
  ssh_key: ssh-rsa AAAA_valid_public_ssh_key_123456785&#x3D;&#x3D; user@their-computer
)
```

