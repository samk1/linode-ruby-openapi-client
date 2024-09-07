# LinodeOpenapiClient::GetChildAccount200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_id** | **String** | The tax identification number for this child account. Use this for tax calculations in some countries. If you live in a country that doesn&#39;t collect taxes, ensure this is an empty string (&#x60;\&quot;\&quot;&#x60;). | [optional] |
| **phone** | **String** | __Filterable__ The phone number for the owner of this child account. | [optional] |
| **company** | **String** | __Filterable__ The company name for the owner of this child account. It can&#39;t include any of these characters: &#x60;&lt;&#x60; &#x60;&gt;&#x60; &#x60;(&#x60; &#x60;)&#x60; &#x60;\&quot;&#x60; &#x60;&#x3D;&#x60;. You can&#39;t change this value yourself. We use it to create the proxy users that a parent account uses to access a child account. Talk to your account team if you need to change this value. | [optional] |
| **billing_source** | **String** | __Read-only__ The source of service charges for this account, as determined by its relationship with Akamai. The API returns a value of &#x60;external&#x60; to describe a child account in a parent-child account environment. | [optional][readonly] |
| **email** | **String** | __Filterable__ The email address of the owner of this child account. | [optional] |
| **balance_uninvoiced** | **Float** | __Read-only__ This child account&#39;s current estimated invoice in US dollars. This is not your final invoice balance. Transfer charges are not included in the estimate. | [optional][readonly] |
| **last_name** | **String** | __Filterable__ The last name of the owner of this child account. It can&#39;t include any of these characters: &#x60;&lt;&#x60; &#x60;&gt;&#x60; &#x60;(&#x60; &#x60;)&#x60; &#x60;\&quot;&#x60; &#x60;&#x3D;&#x60;. | [optional] |
| **country** | **String** | __Filterable__ The two-letter ISO 3166 country code for this child account&#39;s billing address. | [optional] |
| **address_1** | **String** | __Filterable__ First line of this child account&#39;s billing address. | [optional] |
| **euuid** | **String** | __Read-only__ An external, unique identifier that Akamai assigned to the child account. | [optional][readonly] |
| **credit_card** | [**GetChildAccount200ResponseCreditCard**](GetChildAccount200ResponseCreditCard.md) |  | [optional] |
| **city** | **String** | __Filterable__ The city for this child account&#39;s billing address. | [optional] |
| **state** | **String** | __Filterable__ The state or province for the billing address (&#x60;address_1&#x60; and &#x60;address_2, if applicable&#x60;). If in the United States (US) or Canada (CA), this is the two-letter ISO 3166 State or Province code.  __Note__. If this is a US military address, use state abbreviations (AA, AE, AP). | [optional] |
| **balance** | **Float** | __Read-only__ This child account&#39;s balance, in US dollars. | [optional][readonly] |
| **active_since** | **Time** | __Read-only__ The activation date and time for the child account. | [optional][readonly] |
| **first_name** | **String** | __Filterable__ The first name of the owner of this child account. It can&#39;t include any of these characters: &#x60;&lt;&#x60; &#x60;&gt;&#x60; &#x60;(&#x60; &#x60;)&#x60; &#x60;\&quot;&#x60; &#x60;&#x3D;&#x60;. | [optional] |
| **address_2** | **String** | __Filterable__ Second line of this child account&#39;s billing address, if applicable. | [optional] |
| **capabilities** | **Array&lt;String&gt;** | __Read-only__ A list of the capabilities the child account supports. | [optional][readonly] |
| **zip** | **String** | __Filterable__ The zip code of this Account&#39;s billing address. The following restrictions apply:  - Can only contain ASCII letters, numbers, and hyphens (&#x60;-&#x60;). - Can&#39;t contain more than 9 letter or number characters. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetChildAccount200Response.new(
  tax_id: ATU99999999,
  phone: 858-555-1212,
  company: Acme,
  billing_source: external,
  email: john.smith@linode.com,
  balance_uninvoiced: 145,
  last_name: Smith,
  country: US,
  address_1: 123 Main Street,
  euuid: null,
  credit_card: null,
  city: San Diego,
  state: CA,
  balance: 200,
  active_since: null,
  first_name: John,
  address_2: Suite A,
  capabilities: [&quot;Linodes&quot;,&quot;NodeBalancers&quot;,&quot;Block Storage&quot;,&quot;Object Storage&quot;],
  zip: 92111-1234
)
```

