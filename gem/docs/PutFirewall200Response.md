# LinodeOpenapiClient::PutFirewall200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rules** | [**PutFirewall200ResponseRules**](PutFirewall200ResponseRules.md) |  | [optional] |
| **created** | **Time** | __Filterable__, __Read-only__ When this Firewall was created. | [optional][readonly] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of tags applied to this object. Tags are for organizational purposes only. | [optional] |
| **id** | **Integer** | __Filterable__, __Read-only__ The Firewall&#39;s unique ID. | [optional][readonly] |
| **updated** | **Time** | __Filterable__, __Read-only__ When this Firewall was last updated. | [optional][readonly] |
| **status** | **String** | __Read-only__ The status of this Firewall.    - When a Firewall is first created its status is &#x60;enabled&#x60;.   - RUn the [Update a firewall](https://techdocs.akamai.com/linode-api/reference/put-firewall) operation to set a Firewall&#39;s status to &#x60;enabled&#x60; or &#x60;disabled&#x60;.   - RUn the [Delete a firewall](https://techdocs.akamai.com/linode-api/reference/delete-firewall) operation to delete a Firewall. | [optional][readonly] |
| **label** | **String** | __Filterable__ The Firewall&#39;s label, for display purposes only.  Firewall labels have the following constraints:    - Must begin and end with an alphanumeric character.   - May only consist of alphanumeric characters, hyphens (&#x60;-&#x60;), underscores (&#x60;_&#x60;) or periods (&#x60;.&#x60;).   - Cannot have two hyphens (&#x60;--&#x60;), underscores (&#x60;__&#x60;) or periods (&#x60;..&#x60;) in a row.   - Must be between 3 and 32 characters.   - Must be unique. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutFirewall200Response.new(
  rules: null,
  created: null,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  id: 123,
  updated: null,
  status: enabled,
  label: firewall123
)
```

