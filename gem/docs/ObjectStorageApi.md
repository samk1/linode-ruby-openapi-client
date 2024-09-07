# LinodeOpenapiClient::ObjectStorageApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_object_storage_bucket**](ObjectStorageApi.md#delete_object_storage_bucket) | **DELETE** /{apiVersion}/object-storage/buckets/{regionId}/{bucket} | Remove an Object Storage bucket |
| [**delete_object_storage_key**](ObjectStorageApi.md#delete_object_storage_key) | **DELETE** /{apiVersion}/object-storage/keys/{keyId} | Revoke an Object Storage key |
| [**delete_object_storage_ssl**](ObjectStorageApi.md#delete_object_storage_ssl) | **DELETE** /{apiVersion}/object-storage/buckets/{regionId}/{bucket}/ssl | Delete an Object Storage TLS/SSL certificate |
| [**get_object_storage_bucket**](ObjectStorageApi.md#get_object_storage_bucket) | **GET** /{apiVersion}/object-storage/buckets/{regionId}/{bucket} | Get an Object Storage bucket |
| [**get_object_storage_bucket_acl**](ObjectStorageApi.md#get_object_storage_bucket_acl) | **GET** /{apiVersion}/object-storage/buckets/{regionId}/{bucket}/object-acl | Get an Object Storage object ACL config |
| [**get_object_storage_bucket_content**](ObjectStorageApi.md#get_object_storage_bucket_content) | **GET** /{apiVersion}/object-storage/buckets/{regionId}/{bucket}/object-list | List Object Storage bucket contents |
| [**get_object_storage_bucketin_cluster**](ObjectStorageApi.md#get_object_storage_bucketin_cluster) | **GET** /{apiVersion}/object-storage/buckets/{regionId} | List Object Storage buckets per region |
| [**get_object_storage_buckets**](ObjectStorageApi.md#get_object_storage_buckets) | **GET** /{apiVersion}/object-storage/buckets | List Object Storage buckets |
| [**get_object_storage_cluster**](ObjectStorageApi.md#get_object_storage_cluster) | **GET** /{apiVersion}/object-storage/clusters/{clusterId} | Get a cluster |
| [**get_object_storage_clusters**](ObjectStorageApi.md#get_object_storage_clusters) | **GET** /{apiVersion}/object-storage/clusters | List clusters |
| [**get_object_storage_key**](ObjectStorageApi.md#get_object_storage_key) | **GET** /{apiVersion}/object-storage/keys/{keyId} | Get an Object Storage key |
| [**get_object_storage_keys**](ObjectStorageApi.md#get_object_storage_keys) | **GET** /{apiVersion}/object-storage/keys | List Object Storage keys |
| [**get_object_storage_ssl**](ObjectStorageApi.md#get_object_storage_ssl) | **GET** /{apiVersion}/object-storage/buckets/{regionId}/{bucket}/ssl | Get an Object Storage TLS/SSL certificate |
| [**get_object_storage_transfer**](ObjectStorageApi.md#get_object_storage_transfer) | **GET** /{apiVersion}/object-storage/transfer | Get Object Storage transfer data |
| [**post_cancel_object_storage**](ObjectStorageApi.md#post_cancel_object_storage) | **POST** /{apiVersion}/object-storage/cancel | Cancel Object Storage |
| [**post_object_storage_bucket**](ObjectStorageApi.md#post_object_storage_bucket) | **POST** /{apiVersion}/object-storage/buckets | Create an Object Storage bucket |
| [**post_object_storage_bucket_access**](ObjectStorageApi.md#post_object_storage_bucket_access) | **POST** /{apiVersion}/object-storage/buckets/{regionId}/{bucket}/access | Modify access to an Object Storage bucket |
| [**post_object_storage_keys**](ObjectStorageApi.md#post_object_storage_keys) | **POST** /{apiVersion}/object-storage/keys | Create an Object Storage key |
| [**post_object_storage_object_url**](ObjectStorageApi.md#post_object_storage_object_url) | **POST** /{apiVersion}/object-storage/buckets/{regionId}/{bucket}/object-url | Create a URL for an object |
| [**post_object_storage_ssl**](ObjectStorageApi.md#post_object_storage_ssl) | **POST** /{apiVersion}/object-storage/buckets/{regionId}/{bucket}/ssl | Upload an Object Storage TLS/SSL certificate |
| [**put_object_storage_bucket_acl**](ObjectStorageApi.md#put_object_storage_bucket_acl) | **PUT** /{apiVersion}/object-storage/buckets/{regionId}/{bucket}/object-acl | Update an object&#39;s ACL config |
| [**put_object_storage_key**](ObjectStorageApi.md#put_object_storage_key) | **PUT** /{apiVersion}/object-storage/keys/{keyId} | Update an Object Storage key |
| [**put_storage_bucket_access**](ObjectStorageApi.md#put_storage_bucket_access) | **PUT** /{apiVersion}/object-storage/buckets/{regionId}/{bucket}/access | Update access to an Object Storage bucket |


## delete_object_storage_bucket

> Object delete_object_storage_bucket(api_version, region_id, bucket)

Remove an Object Storage bucket

Removes a single bucket.  > 📘 > > - You need to remove all objects from a bucket before you can delete it. While you *can* delete a bucket using the [s3cmd command-line tool](https://www.linode.com/docs/products/storage/object-storage/guides/s3cmd/#delete-a-bucket), this operation fails if the bucket contains too many objects. The best way to empty large buckets is to use the [S3 API to configure lifecycle policies](https://docs.ceph.com/en/latest/radosgw/bucketpolicy/#). Set a policy to remove all objects, wait a day or more for the system to remove all objects, then delete the bucket. > > - The [S3 API](https://docs.ceph.com/en/latest/radosgw/s3/bucketops/#delete-bucket) equivalent operation offers more detail.   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.
bucket = 'bucket_example' # String | The bucket name.

begin
  # Remove an Object Storage bucket
  result = api_instance.delete_object_storage_bucket(api_version, region_id, bucket)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->delete_object_storage_bucket: #{e}"
end
```

#### Using the delete_object_storage_bucket_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_object_storage_bucket_with_http_info(api_version, region_id, bucket)

```ruby
begin
  # Remove an Object Storage bucket
  data, status_code, headers = api_instance.delete_object_storage_bucket_with_http_info(api_version, region_id, bucket)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->delete_object_storage_bucket_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |
| **bucket** | **String** | The bucket name. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_object_storage_key

> Object delete_object_storage_key(api_version, key_id)

Revoke an Object Storage key

Revokes an Object Storage Key. This keypair will no longer be usable by third-party clients.  - A successful request triggers an `obj_access_key_delete` event.   <<LB>>  ---   - __CLI__.      ```     linode-cli object-storage keys-delete 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
key_id = 56 # Integer | The key to look up.

begin
  # Revoke an Object Storage key
  result = api_instance.delete_object_storage_key(api_version, key_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->delete_object_storage_key: #{e}"
end
```

#### Using the delete_object_storage_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_object_storage_key_with_http_info(api_version, key_id)

```ruby
begin
  # Revoke an Object Storage key
  data, status_code, headers = api_instance.delete_object_storage_key_with_http_info(api_version, key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->delete_object_storage_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **key_id** | **Integer** | The key to look up. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_object_storage_ssl

> Object delete_object_storage_ssl(api_version, region_id, bucket)

Delete an Object Storage TLS/SSL certificate

Deletes this Object Storage bucket's user uploaded TLS/SSL certificate and private key.   <<LB>>  ---   - __CLI__.      ```     linode-cli object-storage ssl-delete \\   us-east-1 example-bucket     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.
bucket = 'bucket_example' # String | The bucket name.

begin
  # Delete an Object Storage TLS/SSL certificate
  result = api_instance.delete_object_storage_ssl(api_version, region_id, bucket)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->delete_object_storage_ssl: #{e}"
end
```

#### Using the delete_object_storage_ssl_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_object_storage_ssl_with_http_info(api_version, region_id, bucket)

```ruby
begin
  # Delete an Object Storage TLS/SSL certificate
  data, status_code, headers = api_instance.delete_object_storage_ssl_with_http_info(api_version, region_id, bucket)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->delete_object_storage_ssl_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |
| **bucket** | **String** | The bucket name. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_object_storage_bucket

> <GetObjectStorageBucket200Response> get_object_storage_bucket(api_version, region_id, bucket)

Get an Object Storage bucket

Returns a single Object Storage bucket.  > 📘 > > The [S3 API](https://docs.ceph.com/en/latest/radosgw/s3/bucketops/#get-bucket) equivalent operation offers more detail.   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.
bucket = 'bucket_example' # String | The bucket name.

begin
  # Get an Object Storage bucket
  result = api_instance.get_object_storage_bucket(api_version, region_id, bucket)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_bucket: #{e}"
end
```

#### Using the get_object_storage_bucket_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageBucket200Response>, Integer, Hash)> get_object_storage_bucket_with_http_info(api_version, region_id, bucket)

```ruby
begin
  # Get an Object Storage bucket
  data, status_code, headers = api_instance.get_object_storage_bucket_with_http_info(api_version, region_id, bucket)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageBucket200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_bucket_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |
| **bucket** | **String** | The bucket name. |  |

### Return type

[**GetObjectStorageBucket200Response**](GetObjectStorageBucket200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_object_storage_bucket_acl

> <GetObjectStorageBucketAcl200Response> get_object_storage_bucket_acl(api_version, region_id, bucket, name)

Get an Object Storage object ACL config

View an Object's configured Access Control List (ACL) in this Object Storage bucket. ACLs define who can access your buckets and objects and specify the level of access granted to those users.  > 📘 > > The [S3 API](https://docs.ceph.com/en/latest/radosgw/s3/objectops/#get-object-acl) equivalent operation offers more detail.   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.
bucket = 'bucket_example' # String | The bucket name.
name = 'name_example' # String | The `name` of the object for which to retrieve its Access Control List (ACL). Run the [List Object Storage bucket contents](https://techdocs.akamai.com/linode-api/reference/get-object-storage-bucket-content) operation to access all object names in a bucket.

begin
  # Get an Object Storage object ACL config
  result = api_instance.get_object_storage_bucket_acl(api_version, region_id, bucket, name)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_bucket_acl: #{e}"
end
```

#### Using the get_object_storage_bucket_acl_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageBucketAcl200Response>, Integer, Hash)> get_object_storage_bucket_acl_with_http_info(api_version, region_id, bucket, name)

```ruby
begin
  # Get an Object Storage object ACL config
  data, status_code, headers = api_instance.get_object_storage_bucket_acl_with_http_info(api_version, region_id, bucket, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageBucketAcl200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_bucket_acl_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |
| **bucket** | **String** | The bucket name. |  |
| **name** | **String** | The &#x60;name&#x60; of the object for which to retrieve its Access Control List (ACL). Run the [List Object Storage bucket contents](https://techdocs.akamai.com/linode-api/reference/get-object-storage-bucket-content) operation to access all object names in a bucket. |  |

### Return type

[**GetObjectStorageBucketAcl200Response**](GetObjectStorageBucketAcl200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_object_storage_bucket_content

> <GetObjectStorageBucketContent200Response> get_object_storage_bucket_content(api_version, region_id, bucket, opts)

List Object Storage bucket contents

Returns the contents of a bucket. The contents are paginated using a `marker`, that's the name of the last object on the previous page.  Objects can also be filtered by `prefix` and `delimiter`. See [Filtering and sorting](https://techdocs.akamai.com/linode-api/reference/filtering-and-sorting) for more information.  > 📘 > > The [S3 API](https://docs.ceph.com/en/latest/radosgw/s3/objectops/#get-object) equivalent operation offers more detail.   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.
bucket = 'bucket_example' # String | The bucket name.
opts = {
  marker: 'marker_example', # String | The \"marker\" for this request, which can be used to paginate through large buckets. Its value should be the value of the `next_marker` property returned with the last page. Listing bucket contents _does not_ support arbitrary page access. See the `next_marker` property in the responses section for more details.
  delimiter: 'delimiter_example', # String | The delimiter for object names; if given, object names will be returned up to the first occurrence of this character. This is most commonly used with the `/` character to allow bucket transversal in a manner similar to a filesystem, however any delimiter may be used. Use in conjunction with `prefix` to see object names past the first occurrence of the delimiter.
  prefix: 'prefix_example', # String | Filters objects returned to only those whose name start with the given prefix. Commonly used in conjunction with `delimiter` to allow transversal of bucket contents in a manner similar to a filesystem.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List Object Storage bucket contents
  result = api_instance.get_object_storage_bucket_content(api_version, region_id, bucket, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_bucket_content: #{e}"
end
```

#### Using the get_object_storage_bucket_content_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageBucketContent200Response>, Integer, Hash)> get_object_storage_bucket_content_with_http_info(api_version, region_id, bucket, opts)

```ruby
begin
  # List Object Storage bucket contents
  data, status_code, headers = api_instance.get_object_storage_bucket_content_with_http_info(api_version, region_id, bucket, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageBucketContent200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_bucket_content_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |
| **bucket** | **String** | The bucket name. |  |
| **marker** | **String** | The \&quot;marker\&quot; for this request, which can be used to paginate through large buckets. Its value should be the value of the &#x60;next_marker&#x60; property returned with the last page. Listing bucket contents _does not_ support arbitrary page access. See the &#x60;next_marker&#x60; property in the responses section for more details. | [optional] |
| **delimiter** | **String** | The delimiter for object names; if given, object names will be returned up to the first occurrence of this character. This is most commonly used with the &#x60;/&#x60; character to allow bucket transversal in a manner similar to a filesystem, however any delimiter may be used. Use in conjunction with &#x60;prefix&#x60; to see object names past the first occurrence of the delimiter. | [optional] |
| **prefix** | **String** | Filters objects returned to only those whose name start with the given prefix. Commonly used in conjunction with &#x60;delimiter&#x60; to allow transversal of bucket contents in a manner similar to a filesystem. | [optional] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetObjectStorageBucketContent200Response**](GetObjectStorageBucketContent200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_object_storage_bucketin_cluster

> <GetObjectStorageBucketinCluster200Response> get_object_storage_bucketin_cluster(api_version, region_id)

List Object Storage buckets per region

Returns a list of buckets on your account, in the specified region.  > 📘 > > The [S3 API](https://docs.ceph.com/en/latest/radosgw/s3/bucketops/#get-bucket) equivalent operation offers more detail.   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.

begin
  # List Object Storage buckets per region
  result = api_instance.get_object_storage_bucketin_cluster(api_version, region_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_bucketin_cluster: #{e}"
end
```

#### Using the get_object_storage_bucketin_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageBucketinCluster200Response>, Integer, Hash)> get_object_storage_bucketin_cluster_with_http_info(api_version, region_id)

```ruby
begin
  # List Object Storage buckets per region
  data, status_code, headers = api_instance.get_object_storage_bucketin_cluster_with_http_info(api_version, region_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageBucketinCluster200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_bucketin_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |

### Return type

[**GetObjectStorageBucketinCluster200Response**](GetObjectStorageBucketinCluster200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_object_storage_buckets

> <GetObjectStorageBuckets200Response> get_object_storage_buckets(api_version)

List Object Storage buckets

Returns a paginated list of all Object Storage buckets available in your account.  > 📘 > > The [S3 API](https://docs.ceph.com/en/latest/radosgw/s3/serviceops/#list-buckets) equivalent operation offers more detail.   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List Object Storage buckets
  result = api_instance.get_object_storage_buckets(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_buckets: #{e}"
end
```

#### Using the get_object_storage_buckets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageBuckets200Response>, Integer, Hash)> get_object_storage_buckets_with_http_info(api_version)

```ruby
begin
  # List Object Storage buckets
  data, status_code, headers = api_instance.get_object_storage_buckets_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageBuckets200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_buckets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetObjectStorageBuckets200Response**](GetObjectStorageBuckets200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_object_storage_cluster

> <GetObjectStorageCluster200Response> get_object_storage_cluster(api_version, cluster_id)

Get a cluster

__Deprecated__ Returns a single Object Storage cluster.  > 📘 > > This displays deprecated `clusterId` values that represent regions used with older versions of the API. It's maintained for backward compatibility. Run [Get a region](https://techdocs.akamai.com/linode-api/reference/get-region), instead.   <<LB>>  ---   - __CLI__.      ```     linode-cli object-storage clusters-view us-east-1     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 'us-east-1' # String | Identifies a cluster where this bucket lives. For backward compatibility with Object Storage in this API.  > 📘 > > You can use the applicable `regionId`, for example `us-west`, in place of the `clusterId`, for example, `us-west-1`. Run [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions) to see all regions.

begin
  # Get a cluster
  result = api_instance.get_object_storage_cluster(api_version, cluster_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_cluster: #{e}"
end
```

#### Using the get_object_storage_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageCluster200Response>, Integer, Hash)> get_object_storage_cluster_with_http_info(api_version, cluster_id)

```ruby
begin
  # Get a cluster
  data, status_code, headers = api_instance.get_object_storage_cluster_with_http_info(api_version, cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageCluster200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **String** | Identifies a cluster where this bucket lives. For backward compatibility with Object Storage in this API.  &gt; 📘 &gt; &gt; You can use the applicable &#x60;regionId&#x60;, for example &#x60;us-west&#x60;, in place of the &#x60;clusterId&#x60;, for example, &#x60;us-west-1&#x60;. Run [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions) to see all regions. |  |

### Return type

[**GetObjectStorageCluster200Response**](GetObjectStorageCluster200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_object_storage_clusters

> <GetObjectStorageClusters200Response> get_object_storage_clusters(api_version)

List clusters

Returns a paginated list of available Object Storage legacy clusters.  > 📘 > > This displays deprecated `clusterId` values that represent regions used with older versions of the API. It's maintained for backward compatibility. Run [Get a region](https://techdocs.akamai.com/linode-api/reference/get-region), instead.   <<LB>>  ---   - __CLI__.      ```     linode-cli object-storage clusters-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List clusters
  result = api_instance.get_object_storage_clusters(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_clusters: #{e}"
end
```

#### Using the get_object_storage_clusters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageClusters200Response>, Integer, Hash)> get_object_storage_clusters_with_http_info(api_version)

```ruby
begin
  # List clusters
  data, status_code, headers = api_instance.get_object_storage_clusters_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageClusters200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_clusters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetObjectStorageClusters200Response**](GetObjectStorageClusters200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_object_storage_key

> <GetObjectStorageKey200Response> get_object_storage_key(api_version, key_id)

Get an Object Storage key

Returns a single Object Storage key provisioned for your account.   <<LB>>  ---   - __CLI__.      ```     linode-cli object-storage keys-view \\   --keyId 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     object_storage:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
key_id = 56 # Integer | The key to look up.

begin
  # Get an Object Storage key
  result = api_instance.get_object_storage_key(api_version, key_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_key: #{e}"
end
```

#### Using the get_object_storage_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageKey200Response>, Integer, Hash)> get_object_storage_key_with_http_info(api_version, key_id)

```ruby
begin
  # Get an Object Storage key
  data, status_code, headers = api_instance.get_object_storage_key_with_http_info(api_version, key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageKey200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **key_id** | **Integer** | The key to look up. |  |

### Return type

[**GetObjectStorageKey200Response**](GetObjectStorageKey200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_object_storage_keys

> <GetObjectStorageKeys200Response> get_object_storage_keys(api_version)

List Object Storage keys

Returns a paginated list of Object Storage keys for authenticating to the Object Storage S3 API.   <<LB>>  ---   - __CLI__.      ```     linode-cli object-storage keys-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     object_storage:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List Object Storage keys
  result = api_instance.get_object_storage_keys(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_keys: #{e}"
end
```

#### Using the get_object_storage_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageKeys200Response>, Integer, Hash)> get_object_storage_keys_with_http_info(api_version)

```ruby
begin
  # List Object Storage keys
  data, status_code, headers = api_instance.get_object_storage_keys_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageKeys200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetObjectStorageKeys200Response**](GetObjectStorageKeys200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_object_storage_ssl

> <GetObjectStorageSsl200Response> get_object_storage_ssl(api_version, region_id, bucket)

Get an Object Storage TLS/SSL certificate

Returns a boolean value indicating if this bucket has a corresponding TLS/SSL certificate that was uploaded by an Account user.   <<LB>>  ---   - __CLI__.      ```     linode-cli object-storage ssl-view \\   us-east-1 example-bucket     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     object_storage:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.
bucket = 'bucket_example' # String | The bucket name.

begin
  # Get an Object Storage TLS/SSL certificate
  result = api_instance.get_object_storage_ssl(api_version, region_id, bucket)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_ssl: #{e}"
end
```

#### Using the get_object_storage_ssl_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageSsl200Response>, Integer, Hash)> get_object_storage_ssl_with_http_info(api_version, region_id, bucket)

```ruby
begin
  # Get an Object Storage TLS/SSL certificate
  data, status_code, headers = api_instance.get_object_storage_ssl_with_http_info(api_version, region_id, bucket)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageSsl200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_ssl_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |
| **bucket** | **String** | The bucket name. |  |

### Return type

[**GetObjectStorageSsl200Response**](GetObjectStorageSsl200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_object_storage_transfer

> <GetObjectStorageTransfer200Response> get_object_storage_transfer(api_version)

Get Object Storage transfer data

The amount of outbound data transfer used by your account's Object Storage buckets. Object Storage adds 1 terabyte of outbound data transfer to your data transfer pool. See the [Object Storage Overview](https://www.linode.com/docs/products/storage/object-storage/#pricing) guide for details on Object Storage transfer quotas.   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Get Object Storage transfer data
  result = api_instance.get_object_storage_transfer(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_transfer: #{e}"
end
```

#### Using the get_object_storage_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageTransfer200Response>, Integer, Hash)> get_object_storage_transfer_with_http_info(api_version)

```ruby
begin
  # Get Object Storage transfer data
  data, status_code, headers = api_instance.get_object_storage_transfer_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageTransfer200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->get_object_storage_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetObjectStorageTransfer200Response**](GetObjectStorageTransfer200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_cancel_object_storage

> Object post_cancel_object_storage(api_version)

Cancel Object Storage

Cancel Object Storage on an Account.  __Warning__. This removes all buckets and their contents from your Account. This data is irretrievable once removed.   <<LB>>  ---   - __CLI__.      ```     linode-cli object-storage cancel     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Cancel Object Storage
  result = api_instance.post_cancel_object_storage(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_cancel_object_storage: #{e}"
end
```

#### Using the post_cancel_object_storage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_cancel_object_storage_with_http_info(api_version)

```ruby
begin
  # Cancel Object Storage
  data, status_code, headers = api_instance.post_cancel_object_storage_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_cancel_object_storage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_object_storage_bucket

> <PostObjectStorageBucket200Response> post_object_storage_bucket(api_version, opts)

Create an Object Storage bucket

Creates an Object Storage bucket in the specified data center ([region](https://techdocs.akamai.com/linode-api/reference/get-regions)). If the bucket already exists on your account, this operation returns a 200 response with that bucket as if the API just created it.  > 📘 > > - Accounts with negative balances can't access this operation. > > - The [S3 API](https://docs.ceph.com/en/latest/radosgw/s3/bucketops/#put-bucket) equivalent operation offers more detail. > > - The API still supports the `clusterId` equivalent (`us-west-1`) when setting a `region` for a new bucket, but you should use the `regionId` (`us-west`), instead.   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_object_storage_bucket_request: LinodeOpenapiClient::PostObjectStorageBucketRequest.new({label: 'example-bucket'}) # PostObjectStorageBucketRequest | Information about the bucket you want to create.
}

begin
  # Create an Object Storage bucket
  result = api_instance.post_object_storage_bucket(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_object_storage_bucket: #{e}"
end
```

#### Using the post_object_storage_bucket_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostObjectStorageBucket200Response>, Integer, Hash)> post_object_storage_bucket_with_http_info(api_version, opts)

```ruby
begin
  # Create an Object Storage bucket
  data, status_code, headers = api_instance.post_object_storage_bucket_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostObjectStorageBucket200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_object_storage_bucket_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_object_storage_bucket_request** | [**PostObjectStorageBucketRequest**](PostObjectStorageBucketRequest.md) | Information about the bucket you want to create. | [optional] |

### Return type

[**PostObjectStorageBucket200Response**](PostObjectStorageBucket200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_object_storage_bucket_access

> Object post_object_storage_bucket_access(api_version, region_id, bucket, opts)

Modify access to an Object Storage bucket

Apply basic Cross-origin Resource Sharing (CORS) and Access Control Level (ACL) settings. You can configure CORS for all origins and set canned ACL settings.  > 📘 > > For more fine-grained control of both systems, use the [S3 API](https://docs.ceph.com/en/latest/radosgw/s3/bucketops/#put-bucket-acl).   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.
bucket = 'bucket_example' # String | The bucket name.
opts = {
  post_object_storage_bucket_access_request: LinodeOpenapiClient::PostObjectStorageBucketAccessRequest.new # PostObjectStorageBucketAccessRequest | The changes to make to the bucket's access controls.
}

begin
  # Modify access to an Object Storage bucket
  result = api_instance.post_object_storage_bucket_access(api_version, region_id, bucket, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_object_storage_bucket_access: #{e}"
end
```

#### Using the post_object_storage_bucket_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_object_storage_bucket_access_with_http_info(api_version, region_id, bucket, opts)

```ruby
begin
  # Modify access to an Object Storage bucket
  data, status_code, headers = api_instance.post_object_storage_bucket_access_with_http_info(api_version, region_id, bucket, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_object_storage_bucket_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |
| **bucket** | **String** | The bucket name. |  |
| **post_object_storage_bucket_access_request** | [**PostObjectStorageBucketAccessRequest**](PostObjectStorageBucketAccessRequest.md) | The changes to make to the bucket&#39;s access controls. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_object_storage_keys

> <PostObjectStorageKeys200Response> post_object_storage_keys(api_version, opts)

Create an Object Storage key

Provisions a new Object Storage key for authenticating to the Object Storage S3 API. A successful request triggers an `obj_access_key_create` [event](https://techdocs.akamai.com/linode-api/reference/get-events).  > 📘 > > Accounts with negative balances can't access this operation.  **The `regions` and `region` parameters**  When creating an Object Storage key, specify one or more data centers ([regions](https://techdocs.akamai.com/linode-api/reference/get-regions)) where you want to create and manage Object Storage buckets.  - **The `regions` array**. Populate it with `regionId` values. The resulting Object Storage key grants access to list and create new buckets in these regions. This *doesn't* give access to manage content in these buckets. To address this, you can:    - Use the `bucket_access` array instead to grant management access, per bucket.    - Use [bucket policies](https://www.linode.com/docs/products/storage/object-storage/guides/bucket-policies/) to change the access for this key.  - **The `bucket_access` array**. This optional array lets you set up limited keys. Include individual objects naming a `regionId`, the target `bucket_name`, and the `permissions` for the Object Storage key. Use the resulting key to manage content in the `bucket_name`, based on the permission level set. You can also use the key to create new buckets in the named region. However, the key doesn't have access to manage content in the newly created bucket. You can grant it this access using [bucket policies](https://www.linode.com/docs/products/storage/object-storage/guides/bucket-policies/).  - **Combine the two to apply varying levels of access in the key**. For example, set `regions` to `us-west` to give the key bucket list and create access in that region. Then, set up the `bucket_access` array to give access to a specific `bucket_name` in the `us-east` region. The key has access to manage content in that `bucket_name` and list and create buckets in the `us-east` region, too. If you include the same region in both, the settings applied in the `bucket_access` array take precedence. For example, assume you include `us-east` in the `regions` array, expecting to only give bucket list and creation access to that region. If you also set `us-east` as a `region` in the `bucket_access` array, the Object Storage key gives access to manage content in the specified `bucket_name`, and lets you list and create buckets in that region.  **The `cluster` parameter (legacy)**  For backward compatibility, include the `cluster` parameter to create an Object Storage key. Use the `clusterId` equivalent (us-west-1) instead of the `regionId` (us-west). Leave the `regions` array out. If including the `bucket_access` array to limit access, omit `region` from each object. Use the resulting key in clusters in all supported regions.  > 📘 > > While the API supports this method, you should use the `regions` parameters, instead.  - **Unlimited access**. Omit the `bucket_access` array. The Object Storage key has unlimited cluster access to all buckets, with all permissions.  - **Limited access**. Include the `bucket_access` array. Set the target `bucket_name` and the level of `permissions` for access to that bucket. Use the resulting key to manage content in the named bucket. A limited Object Storage key can [list all buckets](https://techdocs.akamai.com/linode-api/reference/get-object-storage-buckets) and [create a new bucket](https://techdocs.akamai.com/linode-api/reference/post-object-storage-bucket). However, you can't use the key to perform any actions on a bucket, unless the key has access to it. You can use [bucket policies](https://www.linode.com/docs/products/storage/object-storage/guides/bucket-policies/) to modify a key's access.   <<LB>>  ---   - __CLI__.      ```     linode-cli object-storage keys-create \\   --label \"my-object-storage-key\" \\   --bucket_access '[{\"region\": \"ap-south\", \"bucket_name\": \"bucket-example-1\", \"permissions\": \"read_write\" }]'     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_object_storage_keys_request: LinodeOpenapiClient::PostObjectStorageKeysRequest.new # PostObjectStorageKeysRequest | The settings necessary to create a new key.
}

begin
  # Create an Object Storage key
  result = api_instance.post_object_storage_keys(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_object_storage_keys: #{e}"
end
```

#### Using the post_object_storage_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostObjectStorageKeys200Response>, Integer, Hash)> post_object_storage_keys_with_http_info(api_version, opts)

```ruby
begin
  # Create an Object Storage key
  data, status_code, headers = api_instance.post_object_storage_keys_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostObjectStorageKeys200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_object_storage_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_object_storage_keys_request** | [**PostObjectStorageKeysRequest**](PostObjectStorageKeysRequest.md) | The settings necessary to create a new key. | [optional] |

### Return type

[**PostObjectStorageKeys200Response**](PostObjectStorageKeys200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_object_storage_object_url

> <PostObjectStorageObjectUrl200Response> post_object_storage_object_url(api_version, region_id, bucket, opts)

Create a URL for an object

Creates a pre-signed URL to access a single object in a bucket. Use it to share, create, or delete objects by using the appropriate HTTP method in your request body's `method` parameter.  > 📘 > > The [S3 API](https://docs.ceph.com/en/latest/radosgw/s3/) equivalent operation offers more detail.   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.
bucket = 'bucket_example' # String | The bucket name.
opts = {
  post_object_storage_object_url_request: LinodeOpenapiClient::PostObjectStorageObjectUrlRequest.new({method: 'GET', name: 'example'}) # PostObjectStorageObjectUrlRequest | Information about the request to sign.
}

begin
  # Create a URL for an object
  result = api_instance.post_object_storage_object_url(api_version, region_id, bucket, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_object_storage_object_url: #{e}"
end
```

#### Using the post_object_storage_object_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostObjectStorageObjectUrl200Response>, Integer, Hash)> post_object_storage_object_url_with_http_info(api_version, region_id, bucket, opts)

```ruby
begin
  # Create a URL for an object
  data, status_code, headers = api_instance.post_object_storage_object_url_with_http_info(api_version, region_id, bucket, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostObjectStorageObjectUrl200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_object_storage_object_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |
| **bucket** | **String** | The bucket name. |  |
| **post_object_storage_object_url_request** | [**PostObjectStorageObjectUrlRequest**](PostObjectStorageObjectUrlRequest.md) | Information about the request to sign. | [optional] |

### Return type

[**PostObjectStorageObjectUrl200Response**](PostObjectStorageObjectUrl200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_object_storage_ssl

> <GetObjectStorageSsl200Response> post_object_storage_ssl(api_version, region_id, bucket, opts)

Upload an Object Storage TLS/SSL certificate

Upload a TLS/SSL certificate and private key to be served when you visit your Object Storage bucket via HTTPS. Your TLS/SSL certificate and private key are stored encrypted at rest.  To replace an expired certificate, [delete your current certificates](https://techdocs.akamai.com/linode-api/reference/delete-object-storage-ssl) and upload a new one.   <<LB>>  ---   - __CLI__.      ```     linode-cli object-storage ssl-upload \\   us-east-1 example-bucket \\   --certificate \"-----BEGIN CERTIFICATE-----                  CERTIFICATE_INFORMATION                  -----END CERTIFICATE-----\" \\   --private_key \"-----BEGIN PRIVATE KEY-----                  PRIVATE_KEY_INFORMATION                  -----END PRIVATE KEY-----\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.
bucket = 'bucket_example' # String | The bucket name.
opts = {
  post_object_storage_ssl_request: LinodeOpenapiClient::PostObjectStorageSslRequest.new({private_key: '-----BEGIN PRIVATE KEY-----
PRIVATE_KEY_INFORMATION
-----END PRIVATE KEY-----', certificate: '-----BEGIN CERTIFICATE-----
CERTIFICATE_INFORMATION
-----END CERTIFICATE-----'}) # PostObjectStorageSslRequest | Upload this TLS/SSL certificate with its corresponding secret key.
}

begin
  # Upload an Object Storage TLS/SSL certificate
  result = api_instance.post_object_storage_ssl(api_version, region_id, bucket, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_object_storage_ssl: #{e}"
end
```

#### Using the post_object_storage_ssl_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetObjectStorageSsl200Response>, Integer, Hash)> post_object_storage_ssl_with_http_info(api_version, region_id, bucket, opts)

```ruby
begin
  # Upload an Object Storage TLS/SSL certificate
  data, status_code, headers = api_instance.post_object_storage_ssl_with_http_info(api_version, region_id, bucket, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetObjectStorageSsl200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->post_object_storage_ssl_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |
| **bucket** | **String** | The bucket name. |  |
| **post_object_storage_ssl_request** | [**PostObjectStorageSslRequest**](PostObjectStorageSslRequest.md) | Upload this TLS/SSL certificate with its corresponding secret key. | [optional] |

### Return type

[**GetObjectStorageSsl200Response**](GetObjectStorageSsl200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_object_storage_bucket_acl

> <PutObjectStorageBucketAcl200Response> put_object_storage_bucket_acl(api_version, region_id, bucket, opts)

Update an object's ACL config

Update an object's configured access control level (ACL) in this Object Storage bucket. ACLs define who can access your buckets and objects and specify the level of access granted to those users.  > 📘 > > The [S3 API](https://docs.ceph.com/en/latest/radosgw/s3/objectops/#set-object-acl) equivalent operation offers more detail.   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.
bucket = 'bucket_example' # String | The bucket name.
opts = {
  put_object_storage_bucket_acl_request: LinodeOpenapiClient::PutObjectStorageBucketAclRequest.new({name: 'name_example', acl: 'private'}) # PutObjectStorageBucketAclRequest | The changes to make to this Object's access controls.
}

begin
  # Update an object's ACL config
  result = api_instance.put_object_storage_bucket_acl(api_version, region_id, bucket, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->put_object_storage_bucket_acl: #{e}"
end
```

#### Using the put_object_storage_bucket_acl_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutObjectStorageBucketAcl200Response>, Integer, Hash)> put_object_storage_bucket_acl_with_http_info(api_version, region_id, bucket, opts)

```ruby
begin
  # Update an object's ACL config
  data, status_code, headers = api_instance.put_object_storage_bucket_acl_with_http_info(api_version, region_id, bucket, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutObjectStorageBucketAcl200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->put_object_storage_bucket_acl_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |
| **bucket** | **String** | The bucket name. |  |
| **put_object_storage_bucket_acl_request** | [**PutObjectStorageBucketAclRequest**](PutObjectStorageBucketAclRequest.md) | The changes to make to this Object&#39;s access controls. | [optional] |

### Return type

[**PutObjectStorageBucketAcl200Response**](PutObjectStorageBucketAcl200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_object_storage_key

> <PutObjectStorageKey200Response> put_object_storage_key(api_version, key_id, opts)

Update an Object Storage key

Updates an Object Storage key on your account. A successful request triggers an `obj_access_key_update` [event](https://techdocs.akamai.com/linode-api/reference/get-events).   <<LB>>  ---   - __CLI__.      ```     linode-cli object-storage keys-update \\   --keyId 12345   --label \"my-object-storage-key\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
key_id = 56 # Integer | The key to look up.
opts = {
  put_object_storage_key_request: LinodeOpenapiClient::PutObjectStorageKeyRequest.new # PutObjectStorageKeyRequest | The fields to update.
}

begin
  # Update an Object Storage key
  result = api_instance.put_object_storage_key(api_version, key_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->put_object_storage_key: #{e}"
end
```

#### Using the put_object_storage_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutObjectStorageKey200Response>, Integer, Hash)> put_object_storage_key_with_http_info(api_version, key_id, opts)

```ruby
begin
  # Update an Object Storage key
  data, status_code, headers = api_instance.put_object_storage_key_with_http_info(api_version, key_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutObjectStorageKey200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->put_object_storage_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **key_id** | **Integer** | The key to look up. |  |
| **put_object_storage_key_request** | [**PutObjectStorageKeyRequest**](PutObjectStorageKeyRequest.md) | The fields to update. | [optional] |

### Return type

[**PutObjectStorageKey200Response**](PutObjectStorageKey200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_storage_bucket_access

> Object put_storage_bucket_access(api_version, region_id, bucket, opts)

Update access to an Object Storage bucket

Update basic Cross-origin Resource Sharing (CORS) and Access Control Level (ACL) settings. You can configure CORS for all origins and set canned ACL settings.  > 📘 > > For more fine-grained control of both systems, use the [S3 API](https://docs.ceph.com/en/latest/radosgw/s3/bucketops/#put-bucket-acl).   <<LB>>  ---   - __OAuth scopes__.      ```     object_storage:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ObjectStorageApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | Identifies a region where this bucket lives.  > 📘 > > You can use a `clusterId` in place of `regionId` in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster `id`.
bucket = 'bucket_example' # String | The bucket name.
opts = {
  put_storage_bucket_access_request: LinodeOpenapiClient::PutStorageBucketAccessRequest.new # PutStorageBucketAccessRequest | The changes to make to the bucket's access controls.
}

begin
  # Update access to an Object Storage bucket
  result = api_instance.put_storage_bucket_access(api_version, region_id, bucket, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->put_storage_bucket_access: #{e}"
end
```

#### Using the put_storage_bucket_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> put_storage_bucket_access_with_http_info(api_version, region_id, bucket, opts)

```ruby
begin
  # Update access to an Object Storage bucket
  data, status_code, headers = api_instance.put_storage_bucket_access_with_http_info(api_version, region_id, bucket, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ObjectStorageApi->put_storage_bucket_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | Identifies a region where this bucket lives.  &gt; 📘 &gt; &gt; You can use a &#x60;clusterId&#x60; in place of &#x60;regionId&#x60; in requests for buckets that you created using the legacy version of the API. Run [List clusters](https://techdocs.akamai.com/linode-api/reference/get-object-storage-clusters) to see each cluster &#x60;id&#x60;. |  |
| **bucket** | **String** | The bucket name. |  |
| **put_storage_bucket_access_request** | [**PutStorageBucketAccessRequest**](PutStorageBucketAccessRequest.md) | The changes to make to the bucket&#39;s access controls. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

