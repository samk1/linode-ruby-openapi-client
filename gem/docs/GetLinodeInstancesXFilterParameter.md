# LinodeOpenapiClient::GetLinodeInstancesXFilterParameter

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::GetLinodeInstancesXFilterParameter.openapi_one_of
# =>
# [
#   :'FilterAndSortCriteria',
#   :'Object'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::GetLinodeInstancesXFilterParameter.build(data)
# => #<FilterAndSortCriteria:0x00007fdd4aab02a0>

LinodeOpenapiClient::GetLinodeInstancesXFilterParameter.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `FilterAndSortCriteria`
- `Object`
- `nil` (if no type matches)

