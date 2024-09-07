# LinodeOpenapiClient::PutStackScriptRequestUserDefinedFieldsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **example** | **String** | __Read-only__ An example value for the field. | [readonly] |
| **one_of** | **String** | __Read-only__ A list of acceptable single values for the field. | [optional][readonly] |
| **name** | **String** | __Read-only__ The name of the field. | [readonly] |
| **many_of** | **String** | __Read-only__ A list of acceptable values for the field in any quantity, combination or order. | [optional][readonly] |
| **label** | **String** | __Read-only__ A human-readable label for the field that will serve as the input prompt for entering the value during deployment. | [readonly] |
| **default** | **String** | __Read-only__ The default value.  If not specified, this value will be used. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutStackScriptRequestUserDefinedFieldsInner.new(
  example: hunter2,
  one_of: avalue,anothervalue,thirdvalue,
  name: DB_PASSWORD,
  many_of: avalue,anothervalue,thirdvalue,
  label: Enter the password,
  default: null
)
```

