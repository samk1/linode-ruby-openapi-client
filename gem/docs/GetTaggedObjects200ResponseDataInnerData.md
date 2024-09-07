# LinodeOpenapiClient::GetTaggedObjects200ResponseDataInnerData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::GetTaggedObjects200ResponseDataInnerData.openapi_one_of
# =>
# [
#   :'Domain',
#   :'Linode3',
#   :'NodeBalancer',
#   :'Volume2'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::GetTaggedObjects200ResponseDataInnerData.openapi_discriminator_name
# => :'type'
```
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::GetTaggedObjects200ResponseDataInnerData.build(data)
# => #<Domain:0x00007fdd4aab02a0>

LinodeOpenapiClient::GetTaggedObjects200ResponseDataInnerData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Domain`
- `Linode3`
- `NodeBalancer`
- `Volume2`
- `nil` (if no type matches)

