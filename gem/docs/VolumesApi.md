# LinodeOpenapiClient::VolumesApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_volume**](VolumesApi.md#delete_volume) | **DELETE** /{apiVersion}/volumes/{volumeId} | Delete a volume |
| [**get_volume**](VolumesApi.md#get_volume) | **GET** /{apiVersion}/volumes/{volumeId} | Get a volume |
| [**get_volumes**](VolumesApi.md#get_volumes) | **GET** /{apiVersion}/volumes | List volumes |
| [**post_attach_volume**](VolumesApi.md#post_attach_volume) | **POST** /{apiVersion}/volumes/{volumeId}/attach | Attach a volume |
| [**post_clone_volume**](VolumesApi.md#post_clone_volume) | **POST** /{apiVersion}/volumes/{volumeId}/clone | Clone a volume |
| [**post_detach_volume**](VolumesApi.md#post_detach_volume) | **POST** /{apiVersion}/volumes/{volumeId}/detach | Detach a volume |
| [**post_resize_volume**](VolumesApi.md#post_resize_volume) | **POST** /{apiVersion}/volumes/{volumeId}/resize | Resize a volume |
| [**post_volume**](VolumesApi.md#post_volume) | **POST** /{apiVersion}/volumes | Create a volume |
| [**put_volume**](VolumesApi.md#put_volume) | **PUT** /{apiVersion}/volumes/{volumeId} | Update a volume |


## delete_volume

> Object delete_volume(api_version, volume_id)

Delete a volume

Deletes a Volume you have permission to `read_write`.  - __Deleting a Volume is a destructive action and cannot be undone.__  - Deleting stops billing for the Volume. You will be billed for time used within the billing period the Volume was active.  - Volumes that are migrating cannot be deleted until the migration is finished.   <<LB>>  ---   - __CLI__.      ```     linode-cli volumes delete 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     volumes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VolumesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
volume_id = 56 # Integer | ID of the Volume to look up.

begin
  # Delete a volume
  result = api_instance.delete_volume(api_version, volume_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->delete_volume: #{e}"
end
```

#### Using the delete_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_volume_with_http_info(api_version, volume_id)

```ruby
begin
  # Delete a volume
  data, status_code, headers = api_instance.delete_volume_with_http_info(api_version, volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->delete_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **volume_id** | **Integer** | ID of the Volume to look up. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_volume

> <Volume> get_volume(api_version, volume_id, opts)

Get a volume

Get information about a single Volume.   <<LB>>  ---   - __CLI__.      ```     linode-cli volumes view 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     volumes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VolumesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
volume_id = 56 # Integer | ID of the Volume to look up.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # Get a volume
  result = api_instance.get_volume(api_version, volume_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->get_volume: #{e}"
end
```

#### Using the get_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> get_volume_with_http_info(api_version, volume_id, opts)

```ruby
begin
  # Get a volume
  data, status_code, headers = api_instance.get_volume_with_http_info(api_version, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->get_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **volume_id** | **Integer** | ID of the Volume to look up. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**Volume**](Volume.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_volumes

> <GetVolumes200Response> get_volumes(api_version, opts)

List volumes

Returns a paginated list of Volumes you have permission to view.   <<LB>>  ---   - __CLI__.      ```     linode-cli volumes list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     volumes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VolumesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List volumes
  result = api_instance.get_volumes(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->get_volumes: #{e}"
end
```

#### Using the get_volumes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVolumes200Response>, Integer, Hash)> get_volumes_with_http_info(api_version, opts)

```ruby
begin
  # List volumes
  data, status_code, headers = api_instance.get_volumes_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVolumes200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->get_volumes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetVolumes200Response**](GetVolumes200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_attach_volume

> <Volume7> post_attach_volume(api_version, volume_id, post_attach_volume_request)

Attach a volume

Attaches a Volume on your Account to an existing Linode on your Account. In order for this request to complete successfully, your User must have `read_write` permission to the Volume and `read_write` permission to the Linode. Additionally, the Volume and Linode must be located in the same Region.   <<LB>>  ---   - __CLI__.      ```     linode-cli volumes attach 12345 \\   --linode_id 12346 \\   --config_id 23456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     volumes:read_write linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VolumesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
volume_id = 56 # Integer | ID of the Volume to attach.
post_attach_volume_request = LinodeOpenapiClient::PostAttachVolumeRequest.new({linode_id: 37}) # PostAttachVolumeRequest | Volume to attach to a Linode.

begin
  # Attach a volume
  result = api_instance.post_attach_volume(api_version, volume_id, post_attach_volume_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->post_attach_volume: #{e}"
end
```

#### Using the post_attach_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume7>, Integer, Hash)> post_attach_volume_with_http_info(api_version, volume_id, post_attach_volume_request)

```ruby
begin
  # Attach a volume
  data, status_code, headers = api_instance.post_attach_volume_with_http_info(api_version, volume_id, post_attach_volume_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume7>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->post_attach_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **volume_id** | **Integer** | ID of the Volume to attach. |  |
| **post_attach_volume_request** | [**PostAttachVolumeRequest**](PostAttachVolumeRequest.md) | Volume to attach to a Linode. |  |

### Return type

[**Volume7**](Volume7.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_clone_volume

> <Volume8> post_clone_volume(api_version, volume_id, post_clone_volume_request)

Clone a volume

Creates a Volume on your Account. In order for this request to complete successfully, your User must have the `add_volumes` grant. The new Volume will have the same size and data as the source Volume. Creating a new Volume will incur a charge on your Account.  - Only Volumes with a `status` of `active` can be cloned.   <<LB>>  ---   - __CLI__.      ```     linode-cli volumes clone 12345 \\   --label my-volume     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     volumes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VolumesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
volume_id = 56 # Integer | ID of the Volume to clone.
post_clone_volume_request = LinodeOpenapiClient::PostCloneVolumeRequest.new({label: 'my-volume'}) # PostCloneVolumeRequest | The requested state your Volume will be cloned into.

begin
  # Clone a volume
  result = api_instance.post_clone_volume(api_version, volume_id, post_clone_volume_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->post_clone_volume: #{e}"
end
```

#### Using the post_clone_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume8>, Integer, Hash)> post_clone_volume_with_http_info(api_version, volume_id, post_clone_volume_request)

```ruby
begin
  # Clone a volume
  data, status_code, headers = api_instance.post_clone_volume_with_http_info(api_version, volume_id, post_clone_volume_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume8>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->post_clone_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **volume_id** | **Integer** | ID of the Volume to clone. |  |
| **post_clone_volume_request** | [**PostCloneVolumeRequest**](PostCloneVolumeRequest.md) | The requested state your Volume will be cloned into. |  |

### Return type

[**Volume8**](Volume8.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_detach_volume

> Object post_detach_volume(api_version, volume_id)

Detach a volume

Detaches a Volume on your Account from a Linode on your Account. In order for this request to complete successfully, your User must have `read_write` access to the Volume and `read_write` access to the Linode.  Volumes are automatically detached from deleted Linodes.   <<LB>>  ---   - __CLI__.      ```     linode-cli volumes detach 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     volumes:read_write linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VolumesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
volume_id = 56 # Integer | ID of the Volume to detach.

begin
  # Detach a volume
  result = api_instance.post_detach_volume(api_version, volume_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->post_detach_volume: #{e}"
end
```

#### Using the post_detach_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_detach_volume_with_http_info(api_version, volume_id)

```ruby
begin
  # Detach a volume
  data, status_code, headers = api_instance.post_detach_volume_with_http_info(api_version, volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->post_detach_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **volume_id** | **Integer** | ID of the Volume to detach. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_resize_volume

> <Volume3> post_resize_volume(api_version, volume_id, post_resize_volume_request)

Resize a volume

Resize an existing Volume on your Account. In order for this request to complete successfully, your User must have the `read_write` permissions to the Volume.  - Volumes can only be resized up. - Only Volumes with a `status` of \"active\" can be resized.   <<LB>>  ---   - __CLI__.      ```     linode-cli volumes resize 12345 \\   --size 30     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     volumes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VolumesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
volume_id = 56 # Integer | ID of the Volume to resize.
post_resize_volume_request = LinodeOpenapiClient::PostResizeVolumeRequest.new({size: 30}) # PostResizeVolumeRequest | The requested size to increase your Volume to.

begin
  # Resize a volume
  result = api_instance.post_resize_volume(api_version, volume_id, post_resize_volume_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->post_resize_volume: #{e}"
end
```

#### Using the post_resize_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume3>, Integer, Hash)> post_resize_volume_with_http_info(api_version, volume_id, post_resize_volume_request)

```ruby
begin
  # Resize a volume
  data, status_code, headers = api_instance.post_resize_volume_with_http_info(api_version, volume_id, post_resize_volume_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume3>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->post_resize_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **volume_id** | **Integer** | ID of the Volume to resize. |  |
| **post_resize_volume_request** | [**PostResizeVolumeRequest**](PostResizeVolumeRequest.md) | The requested size to increase your Volume to. |  |

### Return type

[**Volume3**](Volume3.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_volume

> <Volume5> post_volume(api_version, post_volume_request)

Create a volume

Creates a Volume on your Account. In order for this to complete successfully, your User must have the `add_volumes` grant. Creating a new Volume will start accruing additional charges on your account.   <<LB>>  ---   - __CLI__.      ```     linode-cli volumes create \\   --label my-volume \\   --size 20 \\   --linode_id 12346 \\   --no-defaults     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     volumes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VolumesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_volume_request = LinodeOpenapiClient::PostVolumeRequest.new({label: 'my-volume'}) # PostVolumeRequest | The requested initial state of a new Volume.

begin
  # Create a volume
  result = api_instance.post_volume(api_version, post_volume_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->post_volume: #{e}"
end
```

#### Using the post_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume5>, Integer, Hash)> post_volume_with_http_info(api_version, post_volume_request)

```ruby
begin
  # Create a volume
  data, status_code, headers = api_instance.post_volume_with_http_info(api_version, post_volume_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume5>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->post_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_volume_request** | [**PostVolumeRequest**](PostVolumeRequest.md) | The requested initial state of a new Volume. |  |

### Return type

[**Volume5**](Volume5.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_volume

> <Volume1> put_volume(api_version, volume_id, put_volume_request)

Update a volume

Updates a Volume that you have permission to `read_write`.   <<LB>>  ---   - __CLI__.      ```     linode-cli volumes update 12345 \\   --label my_volume     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     volumes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VolumesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
volume_id = 56 # Integer | ID of the Volume to look up.
put_volume_request = LinodeOpenapiClient::PutVolumeRequest.new # PutVolumeRequest | If any updated field fails to pass validation, the Volume will not be updated.

begin
  # Update a volume
  result = api_instance.put_volume(api_version, volume_id, put_volume_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->put_volume: #{e}"
end
```

#### Using the put_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume1>, Integer, Hash)> put_volume_with_http_info(api_version, volume_id, put_volume_request)

```ruby
begin
  # Update a volume
  data, status_code, headers = api_instance.put_volume_with_http_info(api_version, volume_id, put_volume_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume1>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VolumesApi->put_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **volume_id** | **Integer** | ID of the Volume to look up. |  |
| **put_volume_request** | [**PutVolumeRequest**](PutVolumeRequest.md) | If any updated field fails to pass validation, the Volume will not be updated. |  |

### Return type

[**Volume1**](Volume1.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

