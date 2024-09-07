# LinodeOpenapiClient::GetVpc200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updated** | **Time** | __Filterable__, __Read-only__ The date-time of the most recent VPC update. | [optional][readonly] |
| **label** | **String** | __Filterable__ The VPC&#39;s label, for display purposes only.  - Needs to be unique among the Account&#39;s VPCs. - Can only contain ASCII letters, numbers, and hyphens (&#x60;-&#x60;). You can&#39;t use two consecutive hyphens (&#x60;--&#x60;). | [optional] |
| **description** | **String** | A written description to help distinguish the VPC. | [optional][default to &#39;&#39;] |
| **subnets** | [**Array&lt;GetVpc200ResponseSubnetsInner&gt;**](GetVpc200ResponseSubnetsInner.md) | A list of subnets associated with the VPC. | [optional] |
| **created** | **Time** | __Filterable__, __Read-only__ The date-time of VPC creation. | [optional][readonly] |
| **region** | **String** | __Filterable__ The Region for the VPC. | [optional] |
| **id** | **Integer** | __Filterable__, __Read-only__ The unique ID of the VPC. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetVpc200Response.new(
  updated: null,
  label: cool-vpc,
  description: A description of my VPC.,
  subnets: null,
  created: null,
  region: us-east,
  id: 123
)
```

