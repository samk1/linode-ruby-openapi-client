# LinodeOpenapiClient::DomainsApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_domain**](DomainsApi.md#delete_domain) | **DELETE** /{apiVersion}/domains/{domainId} | Delete a domain |
| [**delete_domain_record**](DomainsApi.md#delete_domain_record) | **DELETE** /{apiVersion}/domains/{domainId}/records/{recordId} | Delete a domain record |
| [**get_domain**](DomainsApi.md#get_domain) | **GET** /{apiVersion}/domains/{domainId} | Get a domain |
| [**get_domain_record**](DomainsApi.md#get_domain_record) | **GET** /{apiVersion}/domains/{domainId}/records/{recordId} | Get a domain record |
| [**get_domain_records**](DomainsApi.md#get_domain_records) | **GET** /{apiVersion}/domains/{domainId}/records | List domain records |
| [**get_domain_zone**](DomainsApi.md#get_domain_zone) | **GET** /{apiVersion}/domains/{domainId}/zone-file | Get a domain zone file |
| [**get_domains**](DomainsApi.md#get_domains) | **GET** /{apiVersion}/domains | List domains |
| [**post_clone_domain**](DomainsApi.md#post_clone_domain) | **POST** /{apiVersion}/domains/{domainId}/clone | Clone a domain |
| [**post_domain**](DomainsApi.md#post_domain) | **POST** /{apiVersion}/domains | Create a domain |
| [**post_domain_record**](DomainsApi.md#post_domain_record) | **POST** /{apiVersion}/domains/{domainId}/records | Create a domain record |
| [**post_import_domain**](DomainsApi.md#post_import_domain) | **POST** /{apiVersion}/domains/import | Import a domain |
| [**put_domain**](DomainsApi.md#put_domain) | **PUT** /{apiVersion}/domains/{domainId} | Update a domain |
| [**put_domain_record**](DomainsApi.md#put_domain_record) | **PUT** /{apiVersion}/domains/{domainId}/records/{recordId} | Update a domain record |


## delete_domain

> Object delete_domain(api_version, domain_id)

Delete a domain

Deletes a Domain from Linode's DNS Manager. The Domain will be removed from Linode's nameservers shortly after this operation completes. This also deletes all associated Domain Records.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains delete 1234     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
domain_id = 56 # Integer | The ID of the Domain to access.

begin
  # Delete a domain
  result = api_instance.delete_domain(api_version, domain_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->delete_domain: #{e}"
end
```

#### Using the delete_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_domain_with_http_info(api_version, domain_id)

```ruby
begin
  # Delete a domain
  data, status_code, headers = api_instance.delete_domain_with_http_info(api_version, domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->delete_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **domain_id** | **Integer** | The ID of the Domain to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_domain_record

> Object delete_domain_record(api_version, domain_id, record_id)

Delete a domain record

Deletes a Record on this Domain.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains records-delete 123 234     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
domain_id = 56 # Integer | The ID of the Domain whose Record you are accessing.
record_id = 56 # Integer | The ID of the Record you are accessing.

begin
  # Delete a domain record
  result = api_instance.delete_domain_record(api_version, domain_id, record_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->delete_domain_record: #{e}"
end
```

#### Using the delete_domain_record_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_domain_record_with_http_info(api_version, domain_id, record_id)

```ruby
begin
  # Delete a domain record
  data, status_code, headers = api_instance.delete_domain_record_with_http_info(api_version, domain_id, record_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->delete_domain_record_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **domain_id** | **Integer** | The ID of the Domain whose Record you are accessing. |  |
| **record_id** | **Integer** | The ID of the Record you are accessing. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domain

> <Domain3> get_domain(api_version, domain_id)

Get a domain

This is a single Domain that you have registered in Linode's DNS Manager. Linode is not a registrar, and in order for this Domain record to work you must own the domain and point your registrar at Linode's nameservers.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
domain_id = 56 # Integer | The ID of the Domain to access.

begin
  # Get a domain
  result = api_instance.get_domain(api_version, domain_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->get_domain: #{e}"
end
```

#### Using the get_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domain3>, Integer, Hash)> get_domain_with_http_info(api_version, domain_id)

```ruby
begin
  # Get a domain
  data, status_code, headers = api_instance.get_domain_with_http_info(api_version, domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domain3>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->get_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **domain_id** | **Integer** | The ID of the Domain to access. |  |

### Return type

[**Domain3**](Domain3.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domain_record

> <GetDomainRecord200Response> get_domain_record(api_version, domain_id, record_id)

Get a domain record

View a single Record on this Domain.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains records-view 123 234     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
domain_id = 56 # Integer | The ID of the Domain whose Record you are accessing.
record_id = 56 # Integer | The ID of the Record you are accessing.

begin
  # Get a domain record
  result = api_instance.get_domain_record(api_version, domain_id, record_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->get_domain_record: #{e}"
end
```

#### Using the get_domain_record_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomainRecord200Response>, Integer, Hash)> get_domain_record_with_http_info(api_version, domain_id, record_id)

```ruby
begin
  # Get a domain record
  data, status_code, headers = api_instance.get_domain_record_with_http_info(api_version, domain_id, record_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomainRecord200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->get_domain_record_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **domain_id** | **Integer** | The ID of the Domain whose Record you are accessing. |  |
| **record_id** | **Integer** | The ID of the Record you are accessing. |  |

### Return type

[**GetDomainRecord200Response**](GetDomainRecord200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domain_records

> <GetDomainRecords200Response> get_domain_records(api_version, domain_id, opts)

List domain records

Returns a paginated list of Records configured on a Domain in Linode's DNS Manager.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains records-list 1234     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
domain_id = 56 # Integer | The ID of the Domain we are accessing Records for.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List domain records
  result = api_instance.get_domain_records(api_version, domain_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->get_domain_records: #{e}"
end
```

#### Using the get_domain_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomainRecords200Response>, Integer, Hash)> get_domain_records_with_http_info(api_version, domain_id, opts)

```ruby
begin
  # List domain records
  data, status_code, headers = api_instance.get_domain_records_with_http_info(api_version, domain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomainRecords200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->get_domain_records_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **domain_id** | **Integer** | The ID of the Domain we are accessing Records for. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetDomainRecords200Response**](GetDomainRecords200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domain_zone

> <GetDomainZone200Response> get_domain_zone(api_version, domain_id)

Get a domain zone file

Returns the zone file for the last rendered zone for the specified domain.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains zone-file 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
domain_id = 'domain_id_example' # String | ID of the Domain.

begin
  # Get a domain zone file
  result = api_instance.get_domain_zone(api_version, domain_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->get_domain_zone: #{e}"
end
```

#### Using the get_domain_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomainZone200Response>, Integer, Hash)> get_domain_zone_with_http_info(api_version, domain_id)

```ruby
begin
  # Get a domain zone file
  data, status_code, headers = api_instance.get_domain_zone_with_http_info(api_version, domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomainZone200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->get_domain_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **domain_id** | **String** | ID of the Domain. |  |

### Return type

[**GetDomainZone200Response**](GetDomainZone200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domains

> <GetDomains200Response> get_domains(api_version, opts)

List domains

This is a collection of Domains that you have registered in Linode's DNS Manager.  Linode is not a registrar, and in order for these to work you must own the domains and point your registrar at Linode's nameservers.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List domains
  result = api_instance.get_domains(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->get_domains: #{e}"
end
```

#### Using the get_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomains200Response>, Integer, Hash)> get_domains_with_http_info(api_version, opts)

```ruby
begin
  # List domains
  data, status_code, headers = api_instance.get_domains_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomains200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->get_domains_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetDomains200Response**](GetDomains200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_clone_domain

> <Domain7> post_clone_domain(api_version, domain_id, post_clone_domain_request)

Clone a domain

Clones a Domain and all associated DNS records from a Domain that is registered in Linode's DNS manager.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains clone 123 --domain example.com     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
domain_id = 'domain_id_example' # String | ID of the Domain to clone.
post_clone_domain_request = LinodeOpenapiClient::PostCloneDomainRequest.new({domain: 'example.org'}) # PostCloneDomainRequest | Information about the Domain to clone.

begin
  # Clone a domain
  result = api_instance.post_clone_domain(api_version, domain_id, post_clone_domain_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->post_clone_domain: #{e}"
end
```

#### Using the post_clone_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domain7>, Integer, Hash)> post_clone_domain_with_http_info(api_version, domain_id, post_clone_domain_request)

```ruby
begin
  # Clone a domain
  data, status_code, headers = api_instance.post_clone_domain_with_http_info(api_version, domain_id, post_clone_domain_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domain7>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->post_clone_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **domain_id** | **String** | ID of the Domain to clone. |  |
| **post_clone_domain_request** | [**PostCloneDomainRequest**](PostCloneDomainRequest.md) | Information about the Domain to clone. |  |

### Return type

[**Domain7**](Domain7.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_domain

> <Domain2> post_domain(api_version, post_domain_request)

Create a domain

Adds a new Domain to Linode's DNS Manager. Linode is not a registrar, and you must own the domain before adding it here. Be sure to point your registrar to Linode's nameservers so that the records hosted here are used.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains create \\   --type master \\   --domain example.org \\   --soa_email admin@example.org     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_domain_request = LinodeOpenapiClient::PostDomainRequest.new({type: 'master', domain: 'example.org'}) # PostDomainRequest | Information about the domain you are registering.

begin
  # Create a domain
  result = api_instance.post_domain(api_version, post_domain_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->post_domain: #{e}"
end
```

#### Using the post_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domain2>, Integer, Hash)> post_domain_with_http_info(api_version, post_domain_request)

```ruby
begin
  # Create a domain
  data, status_code, headers = api_instance.post_domain_with_http_info(api_version, post_domain_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domain2>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->post_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_domain_request** | [**PostDomainRequest**](PostDomainRequest.md) | Information about the domain you are registering. |  |

### Return type

[**Domain2**](Domain2.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_domain_record

> <PostDomainRecord200Response> post_domain_record(api_version, domain_id, post_domain_record_request)

Create a domain record

Adds a new Domain Record to the zonefile this Domain represents.  Each domain can have up to 12,000 active records.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains records-create 123 \\   --type A \\   --name test \\   --target 203.0.113.1 \\   --priority 50 \\   --weight 50 \\   --port 80 \\   --ttl_sec 604800     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
domain_id = 56 # Integer | The ID of the Domain we are accessing Records for.
post_domain_record_request = LinodeOpenapiClient::PostDomainRecordRequest.new({type: 'A'}) # PostDomainRecordRequest | Information about the new Record to add.

begin
  # Create a domain record
  result = api_instance.post_domain_record(api_version, domain_id, post_domain_record_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->post_domain_record: #{e}"
end
```

#### Using the post_domain_record_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostDomainRecord200Response>, Integer, Hash)> post_domain_record_with_http_info(api_version, domain_id, post_domain_record_request)

```ruby
begin
  # Create a domain record
  data, status_code, headers = api_instance.post_domain_record_with_http_info(api_version, domain_id, post_domain_record_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostDomainRecord200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->post_domain_record_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **domain_id** | **Integer** | The ID of the Domain we are accessing Records for. |  |
| **post_domain_record_request** | [**PostDomainRecordRequest**](PostDomainRecordRequest.md) | Information about the new Record to add. |  |

### Return type

[**PostDomainRecord200Response**](PostDomainRecord200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_import_domain

> <Domain6> post_import_domain(api_version, opts)

Import a domain

Imports a domain zone from a remote nameserver. Your nameserver must allow zone transfers (AXFR) from the following IPs:  - 96.126.114.97 - 96.126.114.98 - 2600:3c00::5e - 2600:3c00::5f   <<LB>>  ---   - __CLI__.      ```     linode-cli domains import --domain example.com --remote_nameserver examplenameserver.com     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_import_domain_request: LinodeOpenapiClient::PostImportDomainRequest.new({domain: 'example.com', remote_nameserver: 'examplenameserver.com'}) # PostImportDomainRequest | Information about the Domain to import.
}

begin
  # Import a domain
  result = api_instance.post_import_domain(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->post_import_domain: #{e}"
end
```

#### Using the post_import_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domain6>, Integer, Hash)> post_import_domain_with_http_info(api_version, opts)

```ruby
begin
  # Import a domain
  data, status_code, headers = api_instance.post_import_domain_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domain6>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->post_import_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_import_domain_request** | [**PostImportDomainRequest**](PostImportDomainRequest.md) | Information about the Domain to import. | [optional] |

### Return type

[**Domain6**](Domain6.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_domain

> <Domain5> put_domain(api_version, domain_id, domain4)

Update a domain

Update information about a Domain in Linode's DNS Manager.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains update 1234 \\   --retry_sec 7200 \\   --ttl_sec 300     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
domain_id = 56 # Integer | The ID of the Domain to access.
domain4 = LinodeOpenapiClient::Domain4.new # Domain4 | The Domain information to update.

begin
  # Update a domain
  result = api_instance.put_domain(api_version, domain_id, domain4)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->put_domain: #{e}"
end
```

#### Using the put_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domain5>, Integer, Hash)> put_domain_with_http_info(api_version, domain_id, domain4)

```ruby
begin
  # Update a domain
  data, status_code, headers = api_instance.put_domain_with_http_info(api_version, domain_id, domain4)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domain5>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->put_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **domain_id** | **Integer** | The ID of the Domain to access. |  |
| **domain4** | [**Domain4**](Domain4.md) | The Domain information to update. |  |

### Return type

[**Domain5**](Domain5.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_domain_record

> <PutDomainRecord200Response> put_domain_record(api_version, domain_id, record_id, put_domain_record_request)

Update a domain record

Updates a single Record on this Domain.   <<LB>>  ---   - __CLI__.      ```     linode-cli domains records-update 123 234 \\   --name test \\   --target 203.0.113.1 \\   --priority 50 \\   --weight 50 \\   --port 80 \\   --ttl_sec 604800     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     domains:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DomainsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
domain_id = 56 # Integer | The ID of the Domain whose Record you are accessing.
record_id = 56 # Integer | The ID of the Record you are accessing.
put_domain_record_request = LinodeOpenapiClient::PutDomainRecordRequest.new # PutDomainRecordRequest | The values to change.

begin
  # Update a domain record
  result = api_instance.put_domain_record(api_version, domain_id, record_id, put_domain_record_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->put_domain_record: #{e}"
end
```

#### Using the put_domain_record_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutDomainRecord200Response>, Integer, Hash)> put_domain_record_with_http_info(api_version, domain_id, record_id, put_domain_record_request)

```ruby
begin
  # Update a domain record
  data, status_code, headers = api_instance.put_domain_record_with_http_info(api_version, domain_id, record_id, put_domain_record_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutDomainRecord200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DomainsApi->put_domain_record_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **domain_id** | **Integer** | The ID of the Domain whose Record you are accessing. |  |
| **record_id** | **Integer** | The ID of the Record you are accessing. |  |
| **put_domain_record_request** | [**PutDomainRecordRequest**](PutDomainRecordRequest.md) | The values to change. |  |

### Return type

[**PutDomainRecord200Response**](PutDomainRecord200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

