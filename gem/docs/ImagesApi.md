# LinodeOpenapiClient::ImagesApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_image**](ImagesApi.md#delete_image) | **DELETE** /{apiVersion}/images/{imageId} | Delete an image |
| [**get_image**](ImagesApi.md#get_image) | **GET** /{apiVersion}/images/{imageId} | Get an image |
| [**get_images**](ImagesApi.md#get_images) | **GET** /{apiVersion}/images | List images |
| [**post_image**](ImagesApi.md#post_image) | **POST** /{apiVersion}/images | Create an image |
| [**post_replicate_image**](ImagesApi.md#post_replicate_image) | **POST** /{apiVersion}/images/{imageId}/regions | Replicate an image |
| [**post_upload_image**](ImagesApi.md#post_upload_image) | **POST** /{apiVersion}/images/upload | Upload an image |
| [**put_image**](ImagesApi.md#put_image) | **PUT** /{apiVersion}/images/{imageId} | Update an image |


## delete_image

> Object delete_image(api_version, image_id)

Delete an image

Deletes a private image you have permission to `read_write`.  > 🚧 > > You can't undo this delete action.   <<LB>>  ---   - __CLI__.      ```     linode-cli images delete 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     images:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ImagesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
image_id = 'linode/debian11' # String | The unique identifier assigned to the image after creation.

begin
  # Delete an image
  result = api_instance.delete_image(api_version, image_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->delete_image: #{e}"
end
```

#### Using the delete_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_image_with_http_info(api_version, image_id)

```ruby
begin
  # Delete an image
  data, status_code, headers = api_instance.delete_image_with_http_info(api_version, image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->delete_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **image_id** | **String** | The unique identifier assigned to the image after creation. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_image

> <GetImage200Response> get_image(api_version, image_id)

Get an image

Get information about a single image. An image can be one of two types:  - **Public image**. The `id` for these images begins with `linode/`. These images are generally available to all users. To limit the response to public images, don't include [authentication](https://techdocs.akamai.com/linode-api/reference/get-started#authentication) when calling this operation.  - **Private image**. The `id` for these images begins with `private/`. These images are account-specific and only accessible to users with appropriate [grants](https://techdocs.akamai.com/linode-api/reference/get-user-grants). To view private images, you need to include authentication when calling this operation. The response will also include public images.   <<LB>>  ---   - __CLI__.      ```     linode-cli images view linode/debian9     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     images:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ImagesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
image_id = 'linode/debian11' # String | The unique identifier assigned to the image after creation.

begin
  # Get an image
  result = api_instance.get_image(api_version, image_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->get_image: #{e}"
end
```

#### Using the get_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetImage200Response>, Integer, Hash)> get_image_with_http_info(api_version, image_id)

```ruby
begin
  # Get an image
  data, status_code, headers = api_instance.get_image_with_http_info(api_version, image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetImage200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->get_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **image_id** | **String** | The unique identifier assigned to the image after creation. |  |

### Return type

[**GetImage200Response**](GetImage200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_images

> <GetImages200Response> get_images(api_version, opts)

List images

Returns a paginated list of images. An image can be one of two types:  - **Public image**. The `id` for these images begins with `linode/`. These images are generally available to all users. To limit the response to public images, don't include [authentication](https://techdocs.akamai.com/linode-api/reference/get-started#authentication) when calling this operation.  - **Private image**. The `id` for these images begins with `private/`. These images are account-specific and only accessible to users with appropriate [grants](https://techdocs.akamai.com/linode-api/reference/get-user-grants). To view private images, you need to include authentication when calling this operation. The response includes both private and public images.   <<LB>>  ---   - __CLI__.      ```     linode-cli images list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     images:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ImagesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List images
  result = api_instance.get_images(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->get_images: #{e}"
end
```

#### Using the get_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetImages200Response>, Integer, Hash)> get_images_with_http_info(api_version, opts)

```ruby
begin
  # List images
  data, status_code, headers = api_instance.get_images_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetImages200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->get_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetImages200Response**](GetImages200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_image

> <PostImage200Response> post_image(api_version, opts)

Create an image

Captures a private, gold-master image from a Linode disk.  > 📘 > > If you create an image from an encrypted disk, the API doesn't encrypt the image. When you rebuild a compute instance from that image, the resulting disk will be automatically encrypted.   <<LB>>  ---   - __CLI__.      ```     linode-cli images create \\   --label this_is_a_label \\   --description \"A longer description \\     of the image\" \\   --disk_id 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     images:read_write linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ImagesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_image_request: LinodeOpenapiClient::PostImageRequest.new({disk_id: 42}) # PostImageRequest | 
}

begin
  # Create an image
  result = api_instance.post_image(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->post_image: #{e}"
end
```

#### Using the post_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostImage200Response>, Integer, Hash)> post_image_with_http_info(api_version, opts)

```ruby
begin
  # Create an image
  data, status_code, headers = api_instance.post_image_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostImage200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->post_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_image_request** | [**PostImageRequest**](PostImageRequest.md) |  | [optional] |

### Return type

[**PostImage200Response**](PostImage200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_replicate_image

> <PostReplicateImage200Response> post_replicate_image(api_version, image_id, post_replicate_image_request)

Replicate an image

Target an existing image and replicate it to another compute region.  - To also keep the target image in its original compute region, you need to include that `region` in the request's data. If you leave it out, the API removes the image from that region. Run the [Get an image](https://techdocs.akamai.com/linode-api/reference/get-image) operation to see the `regions` where an image currently exists.  - You need to provide at least one region. You can't include an empty array to delete all images. Use the [Delete an image](https://techdocs.akamai.com/linode-api/reference/delete-image) operation.  - Only core compute regions can be used. Currently, distributed compute regions aren't supported.   <<LB>>  ---   - __CLI__.      ```     linode-cli images replicate private/12345/regions \\   --regions \"us-iad\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     images:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ImagesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
image_id = 'linode/debian11' # String | The unique identifier assigned to the image after creation.
post_replicate_image_request = LinodeOpenapiClient::PostReplicateImageRequest.new # PostReplicateImageRequest | 

begin
  # Replicate an image
  result = api_instance.post_replicate_image(api_version, image_id, post_replicate_image_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->post_replicate_image: #{e}"
end
```

#### Using the post_replicate_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostReplicateImage200Response>, Integer, Hash)> post_replicate_image_with_http_info(api_version, image_id, post_replicate_image_request)

```ruby
begin
  # Replicate an image
  data, status_code, headers = api_instance.post_replicate_image_with_http_info(api_version, image_id, post_replicate_image_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostReplicateImage200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->post_replicate_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **image_id** | **String** | The unique identifier assigned to the image after creation. |  |
| **post_replicate_image_request** | [**PostReplicateImageRequest**](PostReplicateImageRequest.md) |  |  |

### Return type

[**PostReplicateImage200Response**](PostReplicateImage200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_upload_image

> <PostUploadImage200Response> post_upload_image(api_version, opts)

Upload an image

Creates a new private image instance and returns a URL as the `upload_to` object in the response. Use this URL to upload image data to that instance.  - Ensure the disk is raw disk image (`.img`) format. - Compress it using gzip (`.gz`) format. The maximum compressed file size is 5GB. - Upload the file in a PUT request that includes the `Content-type: application/octet-stream` header.  For example:  ``` curl -v \\   -H \"Content-Type: application/octet-stream\" \\   --upload-file example.img.gz \\   $UPLOAD_URL \\   --progress-bar \\   --output /dev/null ```  > 📘 > > - You need to upload image data within 24 hours of creation or the API cancels the upload and deletes the image. > > - If you create an image from an encrypted disk, the API doesn't encrypt the image. When you rebuild a compute instance from that image, the resulting disk will be automatically encrypted. > > - You can create a new image and upload image data using a single process through [Cloud Manager](https://www.linode.com/docs/products/tools/images/guides/upload-an-image/#uploading-an-image-file-through-the-cloud-manager) or the [Linode CLI](https://www.linode.com/docs/products/tools/images/guides/upload-an-image/#uploading-an-image-file-through-the-linode-cli).   <<LB>>  ---   - __CLI__.      ```     # Upload the image file in a single step linode-cli image-upload \\   --description \"Optional details about the Image\" \\   --label \"Example Image\" \\   --region us-east \\   /path/to/image-file.img.gz  # Returns the upload_to URL linode-cli images upload \\   --description \"Optional details about the Image\" \\   --label \"Example Image\" \\   --region us-east     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     images:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ImagesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_upload_image_request: LinodeOpenapiClient::PostUploadImageRequest.new({region: 'eu-central', label: 'my-image-label'}) # PostUploadImageRequest | The uploaded image details.
}

begin
  # Upload an image
  result = api_instance.post_upload_image(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->post_upload_image: #{e}"
end
```

#### Using the post_upload_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostUploadImage200Response>, Integer, Hash)> post_upload_image_with_http_info(api_version, opts)

```ruby
begin
  # Upload an image
  data, status_code, headers = api_instance.post_upload_image_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostUploadImage200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->post_upload_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_upload_image_request** | [**PostUploadImageRequest**](PostUploadImageRequest.md) | The uploaded image details. | [optional] |

### Return type

[**PostUploadImage200Response**](PostUploadImage200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_image

> <PutImage200Response> put_image(api_version, image_id, put_image_request)

Update an image

Updates a private image that you have permission to `read_write`.  > 📘 > > You can't update the `regions` with this operation. Use the [Replicate an image](https://techdocs.akamai.com/linode-api/reference/post-replicate-image) operation to modify the existing regions for your image.   <<LB>>  ---   - __CLI__.      ```     linode-cli images update private/12345 \\   --label \"My gold-master image\" \\   --description \"The detailed description \\     of my image.\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     images:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ImagesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
image_id = 'linode/debian11' # String | The unique identifier assigned to the image after creation.
put_image_request = LinodeOpenapiClient::PutImageRequest.new # PutImageRequest | 

begin
  # Update an image
  result = api_instance.put_image(api_version, image_id, put_image_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->put_image: #{e}"
end
```

#### Using the put_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutImage200Response>, Integer, Hash)> put_image_with_http_info(api_version, image_id, put_image_request)

```ruby
begin
  # Update an image
  data, status_code, headers = api_instance.put_image_with_http_info(api_version, image_id, put_image_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutImage200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->put_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **image_id** | **String** | The unique identifier assigned to the image after creation. |  |
| **put_image_request** | [**PutImageRequest**](PutImageRequest.md) |  |  |

### Return type

[**PutImage200Response**](PutImage200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

