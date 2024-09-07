# LinodeOpenapiClient::PutFirewallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of tags applied to this object. Tags are for organizational purposes only. | [optional] |
| **label** | **String** | __Filterable__ The Firewall&#39;s label, for display purposes only.  Firewall labels have the following constraints:    - Must begin and end with an alphanumeric character.   - May only consist of alphanumeric characters, hyphens (&#x60;-&#x60;), underscores (&#x60;_&#x60;) or periods (&#x60;.&#x60;).   - Cannot have two hyphens (&#x60;--&#x60;), underscores (&#x60;__&#x60;) or periods (&#x60;..&#x60;) in a row.   - Must be between 3 and 32 characters.   - Must be unique. | [optional] |
| **status** | **String** | The status to be applied to this Firewall.   - When a Firewall is first created its status is &#x60;enabled&#x60;.  - Run the [Delete a firewall](https://techdocs.akamai.com/linode-api/reference/delete-firewall) operation to delete a Firewall. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutFirewallRequest.new(
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  label: firewall123,
  status: enabled
)
```

