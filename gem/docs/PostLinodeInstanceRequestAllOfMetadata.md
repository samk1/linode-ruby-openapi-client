# LinodeOpenapiClient::PostLinodeInstanceRequestAllOfMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_data** | **String** | Base64-encoded [cloud-config](https://www.linode.com/docs/products/compute/compute-instances/guides/metadata-cloud-config/) data.  Cannot be modified after provisioning. To update, use either the [Clone a Linode](https://techdocs.akamai.com/linode-api/reference/post-clone-linode-instance) or [Rebuild a Linode](https://techdocs.akamai.com/linode-api/reference/post-rebuild-linode-instance) operations.  Must not be included when cloning to an existing Linode.  Unencoded data must not exceed 65535 bytes, or about 16kb encoded. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLinodeInstanceRequestAllOfMetadata.new(
  user_data: [B@1acf0944
)
```

