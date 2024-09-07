# LinodeOpenapiClient::PlacementGroupsApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_placement_group**](PlacementGroupsApi.md#delete_placement_group) | **DELETE** /{apiVersion}/placement/groups/{groupId} | Delete a placement group |
| [**get_placement_group**](PlacementGroupsApi.md#get_placement_group) | **GET** /{apiVersion}/placement/groups/{groupId} | Get a placement group |
| [**get_placement_groups**](PlacementGroupsApi.md#get_placement_groups) | **GET** /{apiVersion}/placement/groups | List placement groups |
| [**post_group_add_linode**](PlacementGroupsApi.md#post_group_add_linode) | **POST** /{apiVersion}/placement/groups/{groupId}/assign | Assign a placement group |
| [**post_group_unassign**](PlacementGroupsApi.md#post_group_unassign) | **POST** /{apiVersion}/placement/groups/{groupId}/unassign | Unassign a placement group |
| [**post_placement_group**](PlacementGroupsApi.md#post_placement_group) | **POST** /{apiVersion}/placement/groups | Create placement group |
| [**put_placement_group**](PlacementGroupsApi.md#put_placement_group) | **PUT** /{apiVersion}/placement/groups/{groupId} | Update a placement group |


## delete_placement_group

> Object delete_placement_group(api_version, group_id)

Delete a placement group

Deletes a placement group you have permission to `read_write`.  - Deleting a placement group can't be undone. - All compute instances need to be [removed](https://techdocs.akamai.com/linode-api/reference/post-group-unassign) before you can delete a placement group. - If your placement group is non-compliant, you can't delete it. You need to wait for our help to bring it [compliant](https://www.linode.com/docs/products/compute/compute-instances/guides/placement-groups/#non-compliance-precedence).   <<LB>>  ---   - __CLI__.      ```     linode-cli placement delete 528     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::PlacementGroupsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
group_id = 56 # Integer | ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the `id` for the applicable placement group.

begin
  # Delete a placement group
  result = api_instance.delete_placement_group(api_version, group_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->delete_placement_group: #{e}"
end
```

#### Using the delete_placement_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_placement_group_with_http_info(api_version, group_id)

```ruby
begin
  # Delete a placement group
  data, status_code, headers = api_instance.delete_placement_group_with_http_info(api_version, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->delete_placement_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **group_id** | **Integer** | ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the &#x60;id&#x60; for the applicable placement group. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_placement_group

> <GetPlacementGroup200Response> get_placement_group(api_version, group_id)

Get a placement group

View a specific placement group by ID.   <<LB>>  ---   - __CLI__.      ```     linode-cli placement view 528     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::PlacementGroupsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
group_id = 56 # Integer | ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the `id` for the applicable placement group.

begin
  # Get a placement group
  result = api_instance.get_placement_group(api_version, group_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->get_placement_group: #{e}"
end
```

#### Using the get_placement_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPlacementGroup200Response>, Integer, Hash)> get_placement_group_with_http_info(api_version, group_id)

```ruby
begin
  # Get a placement group
  data, status_code, headers = api_instance.get_placement_group_with_http_info(api_version, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPlacementGroup200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->get_placement_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **group_id** | **Integer** | ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the &#x60;id&#x60; for the applicable placement group. |  |

### Return type

[**GetPlacementGroup200Response**](GetPlacementGroup200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_placement_groups

> <GetPlacementGroups200Response> get_placement_groups(api_version, opts)

List placement groups

Returns a paginated list of placement groups you have permission to view.   <<LB>>  ---   - __CLI__.      ```     linode-cli placement-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     placement:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::PlacementGroupsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List placement groups
  result = api_instance.get_placement_groups(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->get_placement_groups: #{e}"
end
```

#### Using the get_placement_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPlacementGroups200Response>, Integer, Hash)> get_placement_groups_with_http_info(api_version, opts)

```ruby
begin
  # List placement groups
  data, status_code, headers = api_instance.get_placement_groups_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPlacementGroups200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->get_placement_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetPlacementGroups200Response**](GetPlacementGroups200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_group_add_linode

> <PostGroupAddLinode200Response> post_group_add_linode(api_version, group_id, post_group_add_linode_request)

Assign a placement group

Add one or more compute instances to your placement group. Check out our [example API workflow](https://www.linode.com/docs/products/compute/compute-instances/guides/placement-groups/#create-a-placement-group) to create a placement group and add compute instances.   <<LB>>  ---   - __CLI__.      ```     linode-cli placement assignLinode 528 \\   --linodes 123 456 \\   --non-compliant true     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::PlacementGroupsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
group_id = 56 # Integer | ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the `id` for the applicable placement group.
post_group_add_linode_request = LinodeOpenapiClient::PostGroupAddLinodeRequest.new # PostGroupAddLinodeRequest | The compute instances you want to add to your placement group.

begin
  # Assign a placement group
  result = api_instance.post_group_add_linode(api_version, group_id, post_group_add_linode_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->post_group_add_linode: #{e}"
end
```

#### Using the post_group_add_linode_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostGroupAddLinode200Response>, Integer, Hash)> post_group_add_linode_with_http_info(api_version, group_id, post_group_add_linode_request)

```ruby
begin
  # Assign a placement group
  data, status_code, headers = api_instance.post_group_add_linode_with_http_info(api_version, group_id, post_group_add_linode_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostGroupAddLinode200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->post_group_add_linode_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **group_id** | **Integer** | ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the &#x60;id&#x60; for the applicable placement group. |  |
| **post_group_add_linode_request** | [**PostGroupAddLinodeRequest**](PostGroupAddLinodeRequest.md) | The compute instances you want to add to your placement group. |  |

### Return type

[**PostGroupAddLinode200Response**](PostGroupAddLinode200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_group_unassign

> <PostGroupUnassign200Response> post_group_unassign(api_version, group_id, request_body)

Unassign a placement group

Remove one or more compute instances from your placement group.   <<LB>>  ---   - __CLI__.      ```     linode-cli placement unassignLinode 528 \\   --linode 123 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::PlacementGroupsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
group_id = 56 # Integer | ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the `id` for the applicable placement group.
request_body = [37] # Array<Integer> | The compute instances you want to remove from your placement group.

begin
  # Unassign a placement group
  result = api_instance.post_group_unassign(api_version, group_id, request_body)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->post_group_unassign: #{e}"
end
```

#### Using the post_group_unassign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostGroupUnassign200Response>, Integer, Hash)> post_group_unassign_with_http_info(api_version, group_id, request_body)

```ruby
begin
  # Unassign a placement group
  data, status_code, headers = api_instance.post_group_unassign_with_http_info(api_version, group_id, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostGroupUnassign200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->post_group_unassign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **group_id** | **Integer** | ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the &#x60;id&#x60; for the applicable placement group. |  |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) | The compute instances you want to remove from your placement group. |  |

### Return type

[**PostGroupUnassign200Response**](PostGroupUnassign200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_placement_group

> <PostPlacementGroup200Response> post_placement_group(api_version, post_placement_group_request)

Create placement group

Creates a placement group on your account. Placement groups disperse your compute instances across physical machines (hosts) in one of our compute regions. Depending on your workload requirements, you may need your compute instances to follow specific strategies:  - __Grouped together__. You may want them placed close together to reduce latency between compute instances that are used for an application or workload. - __Spread apart__. You may want to disperse them across several hosts to support high availability, for example when required for failover.  <<LB>>  > 📘 > > - Currently, this service is only available in [select regions](https://www.linode.com/docs/products/compute/compute-instances/guides/placement-groups/#availability). > - For this request to complete successfully, your user needs to have the `add_placement` grant. > - We offer an [example API workflow](https://www.linode.com/docs/products/compute/compute-instances/guides/placement-groups/#create-a-placement-group) you can follow to create a placement group.   <<LB>>  ---   - __CLI__.      ```     linode-cli placement create \\   --label PG_Miami_failover \\   --region us-mia \\   --placement_group_type \"anti-affinity:local\" \\   --placement_group_policy strict     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::PlacementGroupsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_placement_group_request = LinodeOpenapiClient::PostPlacementGroupRequest.new({region: 'us-iad', placement_group_policy: 'strict', placement_group_type: 'anti_affinity:local', label: 'PG_Miami_failover'}) # PostPlacementGroupRequest | The requested initial state of the new placement group.

begin
  # Create placement group
  result = api_instance.post_placement_group(api_version, post_placement_group_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->post_placement_group: #{e}"
end
```

#### Using the post_placement_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostPlacementGroup200Response>, Integer, Hash)> post_placement_group_with_http_info(api_version, post_placement_group_request)

```ruby
begin
  # Create placement group
  data, status_code, headers = api_instance.post_placement_group_with_http_info(api_version, post_placement_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostPlacementGroup200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->post_placement_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_placement_group_request** | [**PostPlacementGroupRequest**](PostPlacementGroupRequest.md) | The requested initial state of the new placement group. |  |

### Return type

[**PostPlacementGroup200Response**](PostPlacementGroup200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_placement_group

> <PutPlacementGroup200Response> put_placement_group(api_version, group_id, put_placement_group_request)

Update a placement group

Change the `label` for a specific placement group. This is the only value you can update. However, you can [add](https://techdocs.akamai.com/linode-api/reference/post-group-add-linode) more compute instances or [remove](https://techdocs.akamai.com/linode-api/reference/post-group-unassign) existing ones.   <<LB>>  ---   - __CLI__.      ```     linode-cli placement update 528 \\   --label PG_Miami_failover_update     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::PlacementGroupsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
group_id = 56 # Integer | ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the `id` for the applicable placement group.
put_placement_group_request = LinodeOpenapiClient::PutPlacementGroupRequest.new # PutPlacementGroupRequest | Include the `label` parameter to update the name of your placement group.

begin
  # Update a placement group
  result = api_instance.put_placement_group(api_version, group_id, put_placement_group_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->put_placement_group: #{e}"
end
```

#### Using the put_placement_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutPlacementGroup200Response>, Integer, Hash)> put_placement_group_with_http_info(api_version, group_id, put_placement_group_request)

```ruby
begin
  # Update a placement group
  data, status_code, headers = api_instance.put_placement_group_with_http_info(api_version, group_id, put_placement_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutPlacementGroup200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling PlacementGroupsApi->put_placement_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **group_id** | **Integer** | ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the &#x60;id&#x60; for the applicable placement group. |  |
| **put_placement_group_request** | [**PutPlacementGroupRequest**](PutPlacementGroupRequest.md) | Include the &#x60;label&#x60; parameter to update the name of your placement group. |  |

### Return type

[**PutPlacementGroup200Response**](PutPlacementGroup200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

