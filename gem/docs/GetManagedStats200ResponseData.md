# LinodeOpenapiClient::GetManagedStats200ResponseData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::GetManagedStats200ResponseData.openapi_one_of
# =>
# [
#   :'Array<String>',
#   :'StatsAvailable'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::GetManagedStats200ResponseData.openapi_discriminator_name
# => :'x_linode_ref_name'
```
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::GetManagedStats200ResponseData.build(data)
# => #<Array<String>:0x00007fdd4aab02a0>

LinodeOpenapiClient::GetManagedStats200ResponseData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<String>`
- `StatsAvailable`
- `nil` (if no type matches)

