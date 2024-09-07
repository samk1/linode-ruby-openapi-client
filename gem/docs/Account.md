# LinodeOpenapiClient::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | The first name of the person associated with this Account.  Must not include any of the following characters: &#x60;&lt;&#x60; &#x60;&gt;&#x60; &#x60;(&#x60; &#x60;)&#x60; &#x60;\&quot;&#x60; &#x60;&#x3D;&#x60; | [optional] |
| **zip** | **String** | The zip code of this Account&#39;s billing address. The following restrictions apply:  - Can only contain ASCII letters, numbers, and hyphens (&#x60;-&#x60;). - Must not contain more than 9 letter or number characters. | [optional] |
| **address_2** | **String** | Second line of this Account&#39;s billing address. | [optional] |
| **capabilities** | **Array&lt;String&gt;** | __Read-only__ A list of capabilities your account supports. | [optional][readonly] |
| **credit_card** | [**PutAccountRequestCreditCard**](PutAccountRequestCreditCard.md) |  | [optional] |
| **active_since** | **Time** | __Read-only__ The date and time the account was activated. | [optional][readonly] |
| **balance** | **Float** | __Read-only__ This Account&#39;s balance, in US dollars. | [optional][readonly] |
| **city** | **String** | The city for this Account&#39;s billing address. | [optional] |
| **state** | **String** | If billing address is in the United States (US) or Canada (CA), only the two-letter ISO 3166 State or Province code are accepted. If entering a US military address, state abbreviations (AA, AE, AP) should be entered. If the address is outside the US or CA, this is the Province associated with the Account&#39;s billing address. | [optional] |
| **country** | **String** | The two-letter ISO 3166 country code of this Account&#39;s billing address. | [optional] |
| **last_name** | **String** | The last name of the person associated with this Account.  Must not include any of the following characters: &#x60;&lt;&#x60; &#x60;&gt;&#x60; &#x60;(&#x60; &#x60;)&#x60; &#x60;\&quot;&#x60; &#x60;&#x3D;&#x60; | [optional] |
| **euuid** | **String** | __Read-only__ An external unique identifier for this account. | [optional][readonly] |
| **address_1** | **String** | First line of this Account&#39;s billing address. | [optional] |
| **company** | **String** | The company name associated with this Account.  Must not include any of the following characters: &#x60;&lt;&#x60; &#x60;&gt;&#x60; &#x60;(&#x60; &#x60;)&#x60; &#x60;\&quot;&#x60; &#x60;&#x3D;&#x60; | [optional] |
| **phone** | **String** | The phone number associated with this Account. | [optional] |
| **active_promotions** | [**Array&lt;AccountActivePromotionsInner&gt;**](AccountActivePromotionsInner.md) |  | [optional][readonly] |
| **tax_id** | **String** | The tax identification number associated with this Account, for tax calculations in some countries. If you do not live in a country that collects tax, this should be an empty string (&#x60;\&quot;\&quot;&#x60;). | [optional] |
| **balance_uninvoiced** | **Float** | __Read-only__ This Account&#39;s current estimated invoice in US dollars. This is not your final invoice balance. Transfer charges are not included in the estimate. | [optional][readonly] |
| **email** | **String** | The email address of the person associated with this Account. | [optional] |
| **billing_source** | **String** | __Read-only__ The source of service charges for this Account, as determined by its relationship with Akamai. Accounts that are associated with Akamai-specific customers return a value of &#x60;akamai&#x60;. All other Accounts return a value of &#x60;linode&#x60;. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::Account.new(
  first_name: John,
  zip: 19102-1234,
  address_2: Suite A,
  capabilities: [&quot;Linodes&quot;,&quot;NodeBalancers&quot;,&quot;Block Storage&quot;,&quot;Object Storage&quot;,&quot;Placement Groups&quot;],
  credit_card: null,
  active_since: null,
  balance: 200,
  city: Philadelphia,
  state: PA,
  country: US,
  last_name: Smith,
  euuid: null,
  address_1: 123 Main Street,
  company: Linode LLC,
  phone: 215-555-1212,
  active_promotions: null,
  tax_id: ATU99999999,
  balance_uninvoiced: 145,
  email: john.smith@linode.com,
  billing_source: akamai
)
```

