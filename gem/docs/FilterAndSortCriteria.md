# LinodeOpenapiClient::FilterAndSortCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_by** | **String** | Order results based on the provided attribute. The attribute needs to be filterable. | [optional] |
| **neq** | **String** | The provided string is left out of the results. | [optional] |
| **_or** | **Array&lt;Object&gt;** | At least one condition needs to be true. | [optional] |
| **lte** | **Float** | The value needs to be less than or equal to the provided number. | [optional] |
| **gte** | **Float** | The value needs to be greater than or equal to the provided number. | [optional] |
| **_and** | **Array&lt;Object&gt;** | All conditions need to be true. | [optional] |
| **lt** | **Float** | The value needs to be less than the provided number. | [optional] |
| **order** | **String** | Sort in ascending (&#x60;asc&#x60;) or descending (&#x60;desc&#x60;) order. This defaults to &#x60;asc&#x60;. Requires &#x60;+order_by&#x60;. | [optional][default to &#39;asc&#39;] |
| **gt** | **Float** | The value needs to be greater than the provided number. | [optional] |
| **contains** | **String** | The provided string needs to be in the value. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::FilterAndSortCriteria.new(
  order_by: null,
  neq: null,
  _or: null,
  lte: null,
  gte: null,
  _and: null,
  lt: null,
  order: null,
  gt: null,
  contains: null
)
```

