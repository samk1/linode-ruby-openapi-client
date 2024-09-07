# LinodeOpenapiClient::GetLinodeIps200ResponseIpv4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shared** | [**Array&lt;GetLinodeIps200ResponseIpv4SharedInner&gt;**](GetLinodeIps200ResponseIpv4SharedInner.md) | __Read-only__ A list of shared IP Address objects assigned to this Linode. | [optional][readonly] |
| **vpc** | [**Array&lt;GetLinodeIps200ResponseIpv4VpcInner&gt;**](GetLinodeIps200ResponseIpv4VpcInner.md) | __Read-only__ A list of Virtual Private Cloud (VPC)-specific addresses or ranges for the Linode. | [optional][readonly] |
| **reserved** | [**Array&lt;GetLinodeIps200ResponseIpv4ReservedInner&gt;**](GetLinodeIps200ResponseIpv4ReservedInner.md) | __Read-only__ A list of reserved IP Address objects belonging to this Linode. | [optional][readonly] |
| **private** | [**Array&lt;GetLinodeIps200ResponseIpv4PrivateInner&gt;**](GetLinodeIps200ResponseIpv4PrivateInner.md) | __Read-only__ A list of private IP Address objects belonging to this Linode. | [optional][readonly] |
| **public** | [**Array&lt;GetLinodeIps200ResponseIpv4PublicInner&gt;**](GetLinodeIps200ResponseIpv4PublicInner.md) | __Read-only__ A list of public IP Address objects belonging to this Linode. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeIps200ResponseIpv4.new(
  shared: null,
  vpc: null,
  reserved: null,
  private: null,
  public: null
)
```

