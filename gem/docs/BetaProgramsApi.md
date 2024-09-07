# LinodeOpenapiClient::BetaProgramsApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_beta_program**](BetaProgramsApi.md#get_beta_program) | **GET** /{apiVersion}/betas/{betaId} | Get a Beta program |
| [**get_beta_programs**](BetaProgramsApi.md#get_beta_programs) | **GET** /{apiVersion}/betas | List Beta programs |


## get_beta_program

> <GetBetaProgram200Response> get_beta_program(api_version, beta_id)

Get a Beta program

Display information about a Beta Program. This operation can be used to access inactive as well as active Beta Programs.  Only unrestricted Users can access this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli beta view $betaId     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

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

api_instance = LinodeOpenapiClient::BetaProgramsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
beta_id = 'beta_id_example' # String | The ID of the Beta Program.

begin
  # Get a Beta program
  result = api_instance.get_beta_program(api_version, beta_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling BetaProgramsApi->get_beta_program: #{e}"
end
```

#### Using the get_beta_program_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBetaProgram200Response>, Integer, Hash)> get_beta_program_with_http_info(api_version, beta_id)

```ruby
begin
  # Get a Beta program
  data, status_code, headers = api_instance.get_beta_program_with_http_info(api_version, beta_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBetaProgram200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling BetaProgramsApi->get_beta_program_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **beta_id** | **String** | The ID of the Beta Program. |  |

### Return type

[**GetBetaProgram200Response**](GetBetaProgram200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_beta_programs

> <GetBetaPrograms200Response> get_beta_programs(api_version, opts)

List Beta programs

Display all active Beta Programs.  Only unrestricted Users can access this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli betas list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

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

api_instance = LinodeOpenapiClient::BetaProgramsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List Beta programs
  result = api_instance.get_beta_programs(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling BetaProgramsApi->get_beta_programs: #{e}"
end
```

#### Using the get_beta_programs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBetaPrograms200Response>, Integer, Hash)> get_beta_programs_with_http_info(api_version, opts)

```ruby
begin
  # List Beta programs
  data, status_code, headers = api_instance.get_beta_programs_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBetaPrograms200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling BetaProgramsApi->get_beta_programs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetBetaPrograms200Response**](GetBetaPrograms200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

