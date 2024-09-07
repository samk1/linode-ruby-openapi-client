# LinodeOpenapiClient::LinodeStackScriptsApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_stack_script**](LinodeStackScriptsApi.md#delete_stack_script) | **DELETE** /{apiVersion}/linode/stackscripts/{stackscriptId} | Delete a StackScript |
| [**get_stack_script**](LinodeStackScriptsApi.md#get_stack_script) | **GET** /{apiVersion}/linode/stackscripts/{stackscriptId} | Get a StackScript |
| [**get_stack_scripts**](LinodeStackScriptsApi.md#get_stack_scripts) | **GET** /{apiVersion}/linode/stackscripts | List StackScripts |
| [**post_add_stack_script**](LinodeStackScriptsApi.md#post_add_stack_script) | **POST** /{apiVersion}/linode/stackscripts | Create a StackScript |
| [**put_stack_script**](LinodeStackScriptsApi.md#put_stack_script) | **PUT** /{apiVersion}/linode/stackscripts/{stackscriptId} | Update a StackScript |


## delete_stack_script

> Object delete_stack_script(api_version, stackscript_id)

Delete a StackScript

Deletes a private StackScript you have permission to `read_write`. You cannot delete a public StackScript.   <<LB>>  ---   - __CLI__.      ```     linode-cli stackscripts delete 10079     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     stackscripts:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeStackScriptsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
stackscript_id = 'stackscript_id_example' # String | The ID of the StackScript to look up.

begin
  # Delete a StackScript
  result = api_instance.delete_stack_script(api_version, stackscript_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeStackScriptsApi->delete_stack_script: #{e}"
end
```

#### Using the delete_stack_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_stack_script_with_http_info(api_version, stackscript_id)

```ruby
begin
  # Delete a StackScript
  data, status_code, headers = api_instance.delete_stack_script_with_http_info(api_version, stackscript_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeStackScriptsApi->delete_stack_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **stackscript_id** | **String** | The ID of the StackScript to look up. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stack_script

> <GetStackScript200Response> get_stack_script(api_version, stackscript_id)

Get a StackScript

Returns all of the information about a specified StackScript, including the contents of the script.   <<LB>>  ---   - __CLI__.      ```     linode-cli stackscripts view 10079     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     stackscripts:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeStackScriptsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
stackscript_id = 'stackscript_id_example' # String | The ID of the StackScript to look up.

begin
  # Get a StackScript
  result = api_instance.get_stack_script(api_version, stackscript_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeStackScriptsApi->get_stack_script: #{e}"
end
```

#### Using the get_stack_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStackScript200Response>, Integer, Hash)> get_stack_script_with_http_info(api_version, stackscript_id)

```ruby
begin
  # Get a StackScript
  data, status_code, headers = api_instance.get_stack_script_with_http_info(api_version, stackscript_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStackScript200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeStackScriptsApi->get_stack_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **stackscript_id** | **String** | The ID of the StackScript to look up. |  |

### Return type

[**GetStackScript200Response**](GetStackScript200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stack_scripts

> <GetStackScripts200Response> get_stack_scripts(api_version, opts)

List StackScripts

If the request is not authenticated, only public StackScripts are returned.  For more information on StackScripts, please read our [StackScripts documentation](https://www.linode.com/docs/products/tools/stackscripts/).   <<LB>>  ---   - __CLI__.      ```     linode-cli stackscripts list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     stackscripts:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeStackScriptsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List StackScripts
  result = api_instance.get_stack_scripts(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeStackScriptsApi->get_stack_scripts: #{e}"
end
```

#### Using the get_stack_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStackScripts200Response>, Integer, Hash)> get_stack_scripts_with_http_info(api_version, opts)

```ruby
begin
  # List StackScripts
  data, status_code, headers = api_instance.get_stack_scripts_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStackScripts200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeStackScriptsApi->get_stack_scripts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetStackScripts200Response**](GetStackScripts200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_add_stack_script

> <PostAddStackScript200Response> post_add_stack_script(api_version, post_add_stack_script_request)

Create a StackScript

Creates a StackScript in your Account.   <<LB>>  ---   - __CLI__.      ```     linode-cli stackscripts create \\   --label a-stackscript \\   --description \"This StackScript install and configures MySQL\" \\   --images \"linode/debian9\" \\   --images \"linode/debian8\" \\   --is_public true \\   --rev_note \"Set up MySQL\" \\   --script '#!/bin/bash'     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     stackscripts:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeStackScriptsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_add_stack_script_request = LinodeOpenapiClient::PostAddStackScriptRequest.new({label: 'a-stackscript', script: '\"#!/bin/bash\"', images: ["linode/debian9", "linode/debian8"]}) # PostAddStackScriptRequest | The properties to set for the new StackScript.

begin
  # Create a StackScript
  result = api_instance.post_add_stack_script(api_version, post_add_stack_script_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeStackScriptsApi->post_add_stack_script: #{e}"
end
```

#### Using the post_add_stack_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAddStackScript200Response>, Integer, Hash)> post_add_stack_script_with_http_info(api_version, post_add_stack_script_request)

```ruby
begin
  # Create a StackScript
  data, status_code, headers = api_instance.post_add_stack_script_with_http_info(api_version, post_add_stack_script_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAddStackScript200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeStackScriptsApi->post_add_stack_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_add_stack_script_request** | [**PostAddStackScriptRequest**](PostAddStackScriptRequest.md) | The properties to set for the new StackScript. |  |

### Return type

[**PostAddStackScript200Response**](PostAddStackScript200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_stack_script

> <PutStackScript200Response> put_stack_script(api_version, stackscript_id, opts)

Update a StackScript

Updates a StackScript.  __Once a StackScript is made public, it cannot be made private.__   <<LB>>  ---   - __CLI__.      ```     linode-cli stackscripts update 10079 \\   --label a-stackscript \\   --description \"This StackScript installs \\     and configures MySQL\" \\   --images \"linode/debian9\" \\   --images \"linode/debian8\" \\   --is_public true \\   --rev_note \"Set up MySQL\" \\   --script '#!/bin/bash'     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     stackscripts:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeStackScriptsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
stackscript_id = 'stackscript_id_example' # String | The ID of the StackScript to look up.
opts = {
  put_stack_script_request: LinodeOpenapiClient::PutStackScriptRequest.new # PutStackScriptRequest | The fields to update.
}

begin
  # Update a StackScript
  result = api_instance.put_stack_script(api_version, stackscript_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeStackScriptsApi->put_stack_script: #{e}"
end
```

#### Using the put_stack_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutStackScript200Response>, Integer, Hash)> put_stack_script_with_http_info(api_version, stackscript_id, opts)

```ruby
begin
  # Update a StackScript
  data, status_code, headers = api_instance.put_stack_script_with_http_info(api_version, stackscript_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutStackScript200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeStackScriptsApi->put_stack_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **stackscript_id** | **String** | The ID of the StackScript to look up. |  |
| **put_stack_script_request** | [**PutStackScriptRequest**](PutStackScriptRequest.md) | The fields to update. | [optional] |

### Return type

[**PutStackScript200Response**](PutStackScript200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

