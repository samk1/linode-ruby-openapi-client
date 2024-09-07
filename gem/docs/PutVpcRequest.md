# LinodeOpenapiClient::PutVpcRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | __Filterable__ The VPC&#39;s label, for display purposes only.  - Needs to be unique among the Account&#39;s VPCs. - Can only contain ASCII letters, numbers, and hyphens (&#x60;-&#x60;). You can&#39;t use two consecutive hyphens (&#x60;--&#x60;). | [optional] |
| **description** | **String** | A written description to help distinguish the VPC. | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutVpcRequest.new(
  label: cool-vpc,
  description: A description of my VPC.
)
```

