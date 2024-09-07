# LinodeOpenapiClient::PostVpc200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | __Filterable__, __Read-only__ The date-time of VPC creation. | [optional][readonly] |
| **updated** | **Time** | __Filterable__, __Read-only__ The date-time of the most recent VPC update. | [optional][readonly] |
| **region** | **String** | __Filterable__ The Region for the VPC. | [optional] |
| **description** | **String** | A written description to help distinguish the VPC. | [optional][default to &#39;&#39;] |
| **label** | **String** | __Filterable__ The VPC&#39;s label, for display purposes only.  - Needs to be unique among the Account&#39;s VPCs. - Can only contain ASCII letters, numbers, and hyphens (&#x60;-&#x60;). You can&#39;t use two consecutive hyphens (&#x60;--&#x60;). | [optional] |
| **id** | **Integer** | __Filterable__, __Read-only__ The unique ID of the VPC. | [optional][readonly] |
| **subnets** | [**Array&lt;PostVpc200ResponseSubnetsInner&gt;**](PostVpc200ResponseSubnetsInner.md) | A list of subnets associated with the VPC. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostVpc200Response.new(
  created: null,
  updated: null,
  region: us-east,
  description: A description of my VPC.,
  label: cool-vpc,
  id: 123,
  subnets: null
)
```

