# LinodeOpenapiClient::TagsApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_ag**](TagsApi.md#delete_ag) | **DELETE** /{apiVersion}/tags/{tagLabel} | Delete a tag |
| [**get_tagged_objects**](TagsApi.md#get_tagged_objects) | **GET** /{apiVersion}/tags/{tagLabel} | List tagged objects |
| [**get_tags**](TagsApi.md#get_tags) | **GET** /{apiVersion}/tags | List tags |
| [**post_tag**](TagsApi.md#post_tag) | **POST** /{apiVersion}/tags | Create a tag |


## delete_ag

> Object delete_ag(api_version, tag_label)

Delete a tag

Remove a Tag from all objects and delete it.  __Important__. You must be an unrestricted User in order to access, add, or modify Tags information.   <<LB>>  ---   - __CLI__.      ```     linode-cli tags delete linode-cli tags rm     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::TagsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
tag_label = 'tag_label_example' # String | 

begin
  # Delete a tag
  result = api_instance.delete_ag(api_version, tag_label)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->delete_ag: #{e}"
end
```

#### Using the delete_ag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_ag_with_http_info(api_version, tag_label)

```ruby
begin
  # Delete a tag
  data, status_code, headers = api_instance.delete_ag_with_http_info(api_version, tag_label)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->delete_ag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **tag_label** | **String** |  |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tagged_objects

> <GetTaggedObjects200Response> get_tagged_objects(api_version, tag_label, opts)

List tagged objects

Returns a paginated list of all objects you've tagged with the requested Tag. This is a mixed collection of all object types.  __Important__. You must be an unrestricted User in order to access, add, or modify Tags information.   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::TagsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
tag_label = 'tag_label_example' # String | 
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List tagged objects
  result = api_instance.get_tagged_objects(api_version, tag_label, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->get_tagged_objects: #{e}"
end
```

#### Using the get_tagged_objects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTaggedObjects200Response>, Integer, Hash)> get_tagged_objects_with_http_info(api_version, tag_label, opts)

```ruby
begin
  # List tagged objects
  data, status_code, headers = api_instance.get_tagged_objects_with_http_info(api_version, tag_label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTaggedObjects200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->get_tagged_objects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **tag_label** | **String** |  |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetTaggedObjects200Response**](GetTaggedObjects200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tags

> <GetTags200Response> get_tags(api_version, opts)

List tags

Tags are User-defined labels attached to objects in your Account, such as Linodes. They are used for specifying and grouping attributes of objects that are relevant to the User.  This operation returns a paginated list of Tags on your account.  __Important__. You must be an unrestricted User in order to access, add, or modify Tags information.   <<LB>>  ---   - __CLI__.      ```     linode-cli tags list linode-cli tags ls     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::TagsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List tags
  result = api_instance.get_tags(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->get_tags: #{e}"
end
```

#### Using the get_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTags200Response>, Integer, Hash)> get_tags_with_http_info(api_version, opts)

```ruby
begin
  # List tags
  data, status_code, headers = api_instance.get_tags_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTags200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->get_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetTags200Response**](GetTags200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_tag

> <GetTags200ResponseDataInner> post_tag(api_version, opts)

Create a tag

Creates a new Tag and optionally tags requested objects with it immediately.  __Important__. You must be an unrestricted User in order to access, add, or modify Tags information.   <<LB>>  ---   - __CLI__.      ```     linode-cli tags create \\   --label 'example tag' \\   --linodes 123 \\   --linodes 456 \\   --volumes 9082 \\   --volumes 10003     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::TagsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_tag_request: LinodeOpenapiClient::PostTagRequest.new({label: 'example tag'}) # PostTagRequest | The tag to create, and optionally the objects to tag.
}

begin
  # Create a tag
  result = api_instance.post_tag(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->post_tag: #{e}"
end
```

#### Using the post_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTags200ResponseDataInner>, Integer, Hash)> post_tag_with_http_info(api_version, opts)

```ruby
begin
  # Create a tag
  data, status_code, headers = api_instance.post_tag_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTags200ResponseDataInner>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->post_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_tag_request** | [**PostTagRequest**](PostTagRequest.md) | The tag to create, and optionally the objects to tag. | [optional] |

### Return type

[**GetTags200ResponseDataInner**](GetTags200ResponseDataInner.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

