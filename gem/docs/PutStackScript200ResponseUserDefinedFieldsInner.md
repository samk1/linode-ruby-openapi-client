# LinodeOpenapiClient::PutStackScript200ResponseUserDefinedFieldsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | __Read-only__ A human-readable label for the field that will serve as the input prompt for entering the value during deployment. | [readonly] |
| **many_of** | **String** | __Read-only__ A list of acceptable values for the field in any quantity, combination or order. | [optional][readonly] |
| **name** | **String** | __Read-only__ The name of the field. | [readonly] |
| **default** | **String** | __Read-only__ The default value.  If not specified, this value will be used. | [optional][readonly] |
| **one_of** | **String** | __Read-only__ A list of acceptable single values for the field. | [optional][readonly] |
| **example** | **String** | __Read-only__ An example value for the field. | [readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutStackScript200ResponseUserDefinedFieldsInner.new(
  label: Enter the password,
  many_of: avalue,anothervalue,thirdvalue,
  name: DB_PASSWORD,
  default: null,
  one_of: avalue,anothervalue,thirdvalue,
  example: hunter2
)
```

