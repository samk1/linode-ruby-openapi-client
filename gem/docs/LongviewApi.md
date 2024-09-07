# LinodeOpenapiClient::LongviewApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_longview_client**](LongviewApi.md#delete_longview_client) | **DELETE** /{apiVersion}/longview/clients/{clientId} | Delete a Longview client |
| [**get_longview_client**](LongviewApi.md#get_longview_client) | **GET** /{apiVersion}/longview/clients/{clientId} | Get a Longview client |
| [**get_longview_clients**](LongviewApi.md#get_longview_clients) | **GET** /{apiVersion}/longview/clients | List Longview clients |
| [**get_longview_plan**](LongviewApi.md#get_longview_plan) | **GET** /{apiVersion}/longview/plan | Get a Longview plan |
| [**get_longview_subscription**](LongviewApi.md#get_longview_subscription) | **GET** /{apiVersion}/longview/subscriptions/{subscriptionId} | Get a Longview subscription |
| [**get_longview_subscriptions**](LongviewApi.md#get_longview_subscriptions) | **GET** /{apiVersion}/longview/subscriptions | List Longview subscriptions |
| [**post_longview_client**](LongviewApi.md#post_longview_client) | **POST** /{apiVersion}/longview/clients | Create a Longview client |
| [**put_longview_client**](LongviewApi.md#put_longview_client) | **PUT** /{apiVersion}/longview/clients/{clientId} | Update a Longview client |
| [**put_longview_plan**](LongviewApi.md#put_longview_plan) | **PUT** /{apiVersion}/longview/plan | Update a Longview plan |


## delete_longview_client

> Object delete_longview_client(api_version, client_id)

Delete a Longview client

Deletes a Longview Client from your Account.  __All information stored for this client will be lost.__  This _does not_ uninstall the Longview Client application for your Linode - you must do that manually.   <<LB>>  ---   - __CLI__.      ```     linode-cli longview delete 789     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     longview:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LongviewApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
client_id = 56 # Integer | The Longview Client ID to access.

begin
  # Delete a Longview client
  result = api_instance.delete_longview_client(api_version, client_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->delete_longview_client: #{e}"
end
```

#### Using the delete_longview_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_longview_client_with_http_info(api_version, client_id)

```ruby
begin
  # Delete a Longview client
  data, status_code, headers = api_instance.delete_longview_client_with_http_info(api_version, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->delete_longview_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **client_id** | **Integer** | The Longview Client ID to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_longview_client

> <GetLongviewClient200Response> get_longview_client(api_version, client_id)

Get a Longview client

Returns a single Longview Client you can access.   <<LB>>  ---   - __CLI__.      ```     linode-cli longview view 789     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     longview:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LongviewApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
client_id = 56 # Integer | The Longview Client ID to access.

begin
  # Get a Longview client
  result = api_instance.get_longview_client(api_version, client_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->get_longview_client: #{e}"
end
```

#### Using the get_longview_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLongviewClient200Response>, Integer, Hash)> get_longview_client_with_http_info(api_version, client_id)

```ruby
begin
  # Get a Longview client
  data, status_code, headers = api_instance.get_longview_client_with_http_info(api_version, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLongviewClient200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->get_longview_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **client_id** | **Integer** | The Longview Client ID to access. |  |

### Return type

[**GetLongviewClient200Response**](GetLongviewClient200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_longview_clients

> <GetLongviewClients200Response> get_longview_clients(api_version, opts)

List Longview clients

Returns a paginated list of Longview Clients you have access to. Longview Client is used to monitor stats on your Linode with the help of the Longview Client application.   <<LB>>  ---   - __CLI__.      ```     linode-cli longview list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     longview:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LongviewApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List Longview clients
  result = api_instance.get_longview_clients(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->get_longview_clients: #{e}"
end
```

#### Using the get_longview_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLongviewClients200Response>, Integer, Hash)> get_longview_clients_with_http_info(api_version, opts)

```ruby
begin
  # List Longview clients
  data, status_code, headers = api_instance.get_longview_clients_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLongviewClients200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->get_longview_clients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetLongviewClients200Response**](GetLongviewClients200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_longview_plan

> <GetLongviewPlan200Response> get_longview_plan(api_version)

Get a Longview plan

Get the details of your current Longview plan. This returns a `LongviewSubscription` object for your current Longview Pro plan, or an empty set `{}` if your current plan is Longview Free.  You must have at least one of the following `global` [List a user's grants](https://techdocs.akamai.com/linode-api/reference/get-user-grants) in order to run this operation:    - `\"account_access\": read_write`   - `\"account_access\": read_only`   - `\"longview_subscription\": true`   - `\"add_longview\": true`  To update your subscription plan, send a request to [Update a Longview plan](https://techdocs.akamai.com/linode-api/reference/put-longview-plan).   <<LB>>  ---   - __CLI__.      ```     linode-cli longview plan-view     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     longview:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LongviewApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Get a Longview plan
  result = api_instance.get_longview_plan(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->get_longview_plan: #{e}"
end
```

#### Using the get_longview_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLongviewPlan200Response>, Integer, Hash)> get_longview_plan_with_http_info(api_version)

```ruby
begin
  # Get a Longview plan
  data, status_code, headers = api_instance.get_longview_plan_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLongviewPlan200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->get_longview_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetLongviewPlan200Response**](GetLongviewPlan200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_longview_subscription

> <GetLongviewSubscription200Response> get_longview_subscription(api_version, subscription_id)

Get a Longview subscription

Get the Longview plan details as a single `LongviewSubscription` object for the provided subscription ID. This is a public endpoint and requires no authentication.   <<LB>>  ---   - __CLI__.      ```     linode-cli longview subscription-view     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::LongviewApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
subscription_id = 'subscription_id_example' # String | The Longview Subscription to look up.

begin
  # Get a Longview subscription
  result = api_instance.get_longview_subscription(api_version, subscription_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->get_longview_subscription: #{e}"
end
```

#### Using the get_longview_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLongviewSubscription200Response>, Integer, Hash)> get_longview_subscription_with_http_info(api_version, subscription_id)

```ruby
begin
  # Get a Longview subscription
  data, status_code, headers = api_instance.get_longview_subscription_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLongviewSubscription200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->get_longview_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **subscription_id** | **String** | The Longview Subscription to look up. |  |

### Return type

[**GetLongviewSubscription200Response**](GetLongviewSubscription200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_longview_subscriptions

> <GetLongviewSubscriptions200Response> get_longview_subscriptions(api_version, opts)

List Longview subscriptions

Returns a paginated list of available Longview Subscriptions. This is a public endpoint and requires no authentication.   <<LB>>  ---   - __CLI__.      ```     linode-cli longview subscriptions-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::LongviewApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List Longview subscriptions
  result = api_instance.get_longview_subscriptions(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->get_longview_subscriptions: #{e}"
end
```

#### Using the get_longview_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLongviewSubscriptions200Response>, Integer, Hash)> get_longview_subscriptions_with_http_info(api_version, opts)

```ruby
begin
  # List Longview subscriptions
  data, status_code, headers = api_instance.get_longview_subscriptions_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLongviewSubscriptions200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->get_longview_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetLongviewSubscriptions200Response**](GetLongviewSubscriptions200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_longview_client

> <PostLongviewClient200Response> post_longview_client(api_version, post_longview_client_request)

Create a Longview client

Creates a Longview Client.  This Client will not begin monitoring the status of your server until you configure the Longview Client application on your Linode using the returning `install_code` and `api_key`.   <<LB>>  ---   - __CLI__.      ```     linode-cli longview create \\   --label client789     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     longview:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LongviewApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_longview_client_request = LinodeOpenapiClient::PostLongviewClientRequest.new # PostLongviewClientRequest | Information about the LongviewClient to create.

begin
  # Create a Longview client
  result = api_instance.post_longview_client(api_version, post_longview_client_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->post_longview_client: #{e}"
end
```

#### Using the post_longview_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostLongviewClient200Response>, Integer, Hash)> post_longview_client_with_http_info(api_version, post_longview_client_request)

```ruby
begin
  # Create a Longview client
  data, status_code, headers = api_instance.post_longview_client_with_http_info(api_version, post_longview_client_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostLongviewClient200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->post_longview_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_longview_client_request** | [**PostLongviewClientRequest**](PostLongviewClientRequest.md) | Information about the LongviewClient to create. |  |

### Return type

[**PostLongviewClient200Response**](PostLongviewClient200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_longview_client

> <PutLongviewClient200Response> put_longview_client(api_version, client_id, put_longview_client_request)

Update a Longview client

Updates a Longview Client.  This cannot update how it monitors your server; use the Longview Client application on your Linode for monitoring configuration.   <<LB>>  ---   - __CLI__.      ```     linode-cli longview update 789 \\   --label client789     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     longview:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LongviewApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
client_id = 56 # Integer | The Longview Client ID to access.
put_longview_client_request = LinodeOpenapiClient::PutLongviewClientRequest.new # PutLongviewClientRequest | The fields to update.

begin
  # Update a Longview client
  result = api_instance.put_longview_client(api_version, client_id, put_longview_client_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->put_longview_client: #{e}"
end
```

#### Using the put_longview_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutLongviewClient200Response>, Integer, Hash)> put_longview_client_with_http_info(api_version, client_id, put_longview_client_request)

```ruby
begin
  # Update a Longview client
  data, status_code, headers = api_instance.put_longview_client_with_http_info(api_version, client_id, put_longview_client_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutLongviewClient200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->put_longview_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **client_id** | **Integer** | The Longview Client ID to access. |  |
| **put_longview_client_request** | [**PutLongviewClientRequest**](PutLongviewClientRequest.md) | The fields to update. |  |

### Return type

[**PutLongviewClient200Response**](PutLongviewClient200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_longview_plan

> <PutLongviewPlan200Response> put_longview_plan(api_version, put_longview_plan_request)

Update a Longview plan

Update your Longview plan to that of the given subscription ID. This returns a `LongviewSubscription` object for the updated Longview Pro plan, or an empty set `{}` if the updated plan is Longview Free.  You must have `\"longview_subscription\": true` configured as a `global` [user grant](https://techdocs.akamai.com/linode-api/reference/get-user-grants) in order to run this operation.  You can send a request to the [List Longview subscriptions](https://techdocs.akamai.com/linode-api/reference/get-longview-subscriptions) operation to receive the details, including `id`'s, of each plan.   <<LB>>  ---   - __CLI__.      ```     linode-cli longview plan-update --longview_subscription longview-10     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     longview:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LongviewApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
put_longview_plan_request = LinodeOpenapiClient::PutLongviewPlanRequest.new # PutLongviewPlanRequest | Update your Longview subscription plan.

begin
  # Update a Longview plan
  result = api_instance.put_longview_plan(api_version, put_longview_plan_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->put_longview_plan: #{e}"
end
```

#### Using the put_longview_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutLongviewPlan200Response>, Integer, Hash)> put_longview_plan_with_http_info(api_version, put_longview_plan_request)

```ruby
begin
  # Update a Longview plan
  data, status_code, headers = api_instance.put_longview_plan_with_http_info(api_version, put_longview_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutLongviewPlan200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LongviewApi->put_longview_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **put_longview_plan_request** | [**PutLongviewPlanRequest**](PutLongviewPlanRequest.md) | Update your Longview subscription plan. |  |

### Return type

[**PutLongviewPlan200Response**](PutLongviewPlan200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

