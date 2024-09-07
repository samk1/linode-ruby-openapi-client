# LinodeOpenapiClient::NodeBalancersApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_node_balancer**](NodeBalancersApi.md#delete_node_balancer) | **DELETE** /{apiVersion}/nodebalancers/{nodeBalancerId} | Delete a NodeBalancer |
| [**delete_node_balancer_config**](NodeBalancersApi.md#delete_node_balancer_config) | **DELETE** /{apiVersion}/nodebalancers/{nodeBalancerId}/configs/{configId} | Delete a config |
| [**delete_node_balancer_config_node**](NodeBalancersApi.md#delete_node_balancer_config_node) | **DELETE** /{apiVersion}/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId} | Delete a node balancer&#39;s node |
| [**get_node_balancer**](NodeBalancersApi.md#get_node_balancer) | **GET** /{apiVersion}/nodebalancers/{nodeBalancerId} | Get a NodeBalancer |
| [**get_node_balancer_config**](NodeBalancersApi.md#get_node_balancer_config) | **GET** /{apiVersion}/nodebalancers/{nodeBalancerId}/configs/{configId} | Get a config |
| [**get_node_balancer_config_nodes**](NodeBalancersApi.md#get_node_balancer_config_nodes) | **GET** /{apiVersion}/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes | List nodes |
| [**get_node_balancer_configs**](NodeBalancersApi.md#get_node_balancer_configs) | **GET** /{apiVersion}/nodebalancers/{nodeBalancerId}/configs | List configs |
| [**get_node_balancer_firewalls**](NodeBalancersApi.md#get_node_balancer_firewalls) | **GET** /{apiVersion}/nodebalancers/{nodeBalancerId}/firewalls | List node balancer firewalls |
| [**get_node_balancer_node**](NodeBalancersApi.md#get_node_balancer_node) | **GET** /{apiVersion}/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId} | Get a node balancer&#39;s node |
| [**get_node_balancer_stats**](NodeBalancersApi.md#get_node_balancer_stats) | **GET** /{apiVersion}/nodebalancers/{nodeBalancerId}/stats | Get node balancer statistics |
| [**get_node_balancers**](NodeBalancersApi.md#get_node_balancers) | **GET** /{apiVersion}/nodebalancers | List NodeBalancers |
| [**post_node_balancer**](NodeBalancersApi.md#post_node_balancer) | **POST** /{apiVersion}/nodebalancers | Create a NodeBalancer |
| [**post_node_balancer_config**](NodeBalancersApi.md#post_node_balancer_config) | **POST** /{apiVersion}/nodebalancers/{nodeBalancerId}/configs | Create a config |
| [**post_node_balancer_node**](NodeBalancersApi.md#post_node_balancer_node) | **POST** /{apiVersion}/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes | Create a node |
| [**post_rebuild_node_balancer_config**](NodeBalancersApi.md#post_rebuild_node_balancer_config) | **POST** /{apiVersion}/nodebalancers/{nodeBalancerId}/configs/{configId}/rebuild | Rebuild a config |
| [**put_node_balancer**](NodeBalancersApi.md#put_node_balancer) | **PUT** /{apiVersion}/nodebalancers/{nodeBalancerId} | Update a NodeBalancer |
| [**put_node_balancer_config**](NodeBalancersApi.md#put_node_balancer_config) | **PUT** /{apiVersion}/nodebalancers/{nodeBalancerId}/configs/{configId} | Update a config |
| [**put_node_balancer_node**](NodeBalancersApi.md#put_node_balancer_node) | **PUT** /{apiVersion}/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId} | Update a node |


## delete_node_balancer

> Object delete_node_balancer(api_version, node_balancer_id)

Delete a NodeBalancer

Deletes a NodeBalancer.  __This is a destructive action and cannot be undone.__  Deleting a NodeBalancer will also delete all associated Configs and Nodes, although the backend servers represented by the Nodes will not be changed or removed. Deleting a NodeBalancer will cause you to lose access to the IP Addresses assigned to this NodeBalancer.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers delete 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.

begin
  # Delete a NodeBalancer
  result = api_instance.delete_node_balancer(api_version, node_balancer_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->delete_node_balancer: #{e}"
end
```

#### Using the delete_node_balancer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_node_balancer_with_http_info(api_version, node_balancer_id)

```ruby
begin
  # Delete a NodeBalancer
  data, status_code, headers = api_instance.delete_node_balancer_with_http_info(api_version, node_balancer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->delete_node_balancer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_node_balancer_config

> Object delete_node_balancer_config(api_version, node_balancer_id, config_id)

Delete a config

Deletes the Config for a port of this NodeBalancer.  __This cannot be undone.__  Once completed, this NodeBalancer will no longer respond to requests on the given port. This also deletes all associated NodeBalancerNodes, but the Linodes they were routing traffic to will be unchanged and will not be removed.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers config-delete \\   12345 4567     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
config_id = 56 # Integer | The ID of the Config to access.

begin
  # Delete a config
  result = api_instance.delete_node_balancer_config(api_version, node_balancer_id, config_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->delete_node_balancer_config: #{e}"
end
```

#### Using the delete_node_balancer_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_node_balancer_config_with_http_info(api_version, node_balancer_id, config_id)

```ruby
begin
  # Delete a config
  data, status_code, headers = api_instance.delete_node_balancer_config_with_http_info(api_version, node_balancer_id, config_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->delete_node_balancer_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **config_id** | **Integer** | The ID of the Config to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_node_balancer_config_node

> Object delete_node_balancer_config_node(api_version, node_balancer_id, config_id, node_id)

Delete a node balancer's node

Deletes a Node from this Config. This backend will no longer receive traffic for the configured port of this NodeBalancer.  This does not change or remove the Linode whose address was used in the creation of this Node.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers node-delete \\   12345 4567 54321     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
config_id = 56 # Integer | The ID of the Config to access.
node_id = 56 # Integer | The ID of the Node to access.

begin
  # Delete a node balancer's node
  result = api_instance.delete_node_balancer_config_node(api_version, node_balancer_id, config_id, node_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->delete_node_balancer_config_node: #{e}"
end
```

#### Using the delete_node_balancer_config_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_node_balancer_config_node_with_http_info(api_version, node_balancer_id, config_id, node_id)

```ruby
begin
  # Delete a node balancer's node
  data, status_code, headers = api_instance.delete_node_balancer_config_node_with_http_info(api_version, node_balancer_id, config_id, node_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->delete_node_balancer_config_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **config_id** | **Integer** | The ID of the Config to access. |  |
| **node_id** | **Integer** | The ID of the Node to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_node_balancer

> <NodeBalancer1> get_node_balancer(api_version, node_balancer_id)

Get a NodeBalancer

Returns a single NodeBalancer you can access.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers view 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.

begin
  # Get a NodeBalancer
  result = api_instance.get_node_balancer(api_version, node_balancer_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer: #{e}"
end
```

#### Using the get_node_balancer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NodeBalancer1>, Integer, Hash)> get_node_balancer_with_http_info(api_version, node_balancer_id)

```ruby
begin
  # Get a NodeBalancer
  data, status_code, headers = api_instance.get_node_balancer_with_http_info(api_version, node_balancer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NodeBalancer1>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |

### Return type

[**NodeBalancer1**](NodeBalancer1.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_node_balancer_config

> <GetNodeBalancerConfig200Response> get_node_balancer_config(api_version, node_balancer_id, config_id)

Get a config

Returns configuration information for a single port of this NodeBalancer.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers config-view \\   12345 4567     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
config_id = 56 # Integer | The ID of the Config to access.

begin
  # Get a config
  result = api_instance.get_node_balancer_config(api_version, node_balancer_id, config_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_config: #{e}"
end
```

#### Using the get_node_balancer_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNodeBalancerConfig200Response>, Integer, Hash)> get_node_balancer_config_with_http_info(api_version, node_balancer_id, config_id)

```ruby
begin
  # Get a config
  data, status_code, headers = api_instance.get_node_balancer_config_with_http_info(api_version, node_balancer_id, config_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNodeBalancerConfig200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **config_id** | **Integer** | The ID of the Config to access. |  |

### Return type

[**GetNodeBalancerConfig200Response**](GetNodeBalancerConfig200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_node_balancer_config_nodes

> <GetNodeBalancerConfigNodes200Response> get_node_balancer_config_nodes(api_version, node_balancer_id, config_id, opts)

List nodes

Returns a paginated list of NodeBalancer nodes associated with this Config. These are the backends that will be sent traffic for this port.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers nodes-list 12345 4567     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
config_id = 56 # Integer | The ID of the NodeBalancer config to access.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List nodes
  result = api_instance.get_node_balancer_config_nodes(api_version, node_balancer_id, config_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_config_nodes: #{e}"
end
```

#### Using the get_node_balancer_config_nodes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNodeBalancerConfigNodes200Response>, Integer, Hash)> get_node_balancer_config_nodes_with_http_info(api_version, node_balancer_id, config_id, opts)

```ruby
begin
  # List nodes
  data, status_code, headers = api_instance.get_node_balancer_config_nodes_with_http_info(api_version, node_balancer_id, config_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNodeBalancerConfigNodes200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_config_nodes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **config_id** | **Integer** | The ID of the NodeBalancer config to access. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetNodeBalancerConfigNodes200Response**](GetNodeBalancerConfigNodes200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_node_balancer_configs

> <GetNodeBalancerConfigs200Response> get_node_balancer_configs(api_version, node_balancer_id, opts)

List configs

Returns a paginated list of NodeBalancer Configs associated with this NodeBalancer. NodeBalancer Configs represent individual ports that this NodeBalancer will accept traffic on, one Config per port.  For example, if you wanted to accept standard HTTP traffic, you would need a Config listening on port 80.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers configs-list 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List configs
  result = api_instance.get_node_balancer_configs(api_version, node_balancer_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_configs: #{e}"
end
```

#### Using the get_node_balancer_configs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNodeBalancerConfigs200Response>, Integer, Hash)> get_node_balancer_configs_with_http_info(api_version, node_balancer_id, opts)

```ruby
begin
  # List configs
  data, status_code, headers = api_instance.get_node_balancer_configs_with_http_info(api_version, node_balancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNodeBalancerConfigs200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_configs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetNodeBalancerConfigs200Response**](GetNodeBalancerConfigs200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_node_balancer_firewalls

> <GetNodeBalancerFirewalls200Response> get_node_balancer_firewalls(api_version, node_balancer_id)

List node balancer firewalls

View information for Firewalls assigned to this NodeBalancer.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers firewalls $nodeBalancerId     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.

begin
  # List node balancer firewalls
  result = api_instance.get_node_balancer_firewalls(api_version, node_balancer_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_firewalls: #{e}"
end
```

#### Using the get_node_balancer_firewalls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNodeBalancerFirewalls200Response>, Integer, Hash)> get_node_balancer_firewalls_with_http_info(api_version, node_balancer_id)

```ruby
begin
  # List node balancer firewalls
  data, status_code, headers = api_instance.get_node_balancer_firewalls_with_http_info(api_version, node_balancer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNodeBalancerFirewalls200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_firewalls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |

### Return type

[**GetNodeBalancerFirewalls200Response**](GetNodeBalancerFirewalls200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_node_balancer_node

> <GetNodeBalancerNode200Response> get_node_balancer_node(api_version, node_balancer_id, config_id, node_id)

Get a node balancer's node

Returns information about a single Node, a backend for this NodeBalancer's configured port.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers node-view 12345 4567 54321     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
config_id = 56 # Integer | The ID of the Config to access.
node_id = 56 # Integer | The ID of the Node to access.

begin
  # Get a node balancer's node
  result = api_instance.get_node_balancer_node(api_version, node_balancer_id, config_id, node_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_node: #{e}"
end
```

#### Using the get_node_balancer_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNodeBalancerNode200Response>, Integer, Hash)> get_node_balancer_node_with_http_info(api_version, node_balancer_id, config_id, node_id)

```ruby
begin
  # Get a node balancer's node
  data, status_code, headers = api_instance.get_node_balancer_node_with_http_info(api_version, node_balancer_id, config_id, node_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNodeBalancerNode200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **config_id** | **Integer** | The ID of the Config to access. |  |
| **node_id** | **Integer** | The ID of the Node to access. |  |

### Return type

[**GetNodeBalancerNode200Response**](GetNodeBalancerNode200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_node_balancer_stats

> <GetNodeBalancerStats200Response> get_node_balancer_stats(api_version, node_balancer_id)

Get node balancer statistics

Returns detailed statistics about the requested NodeBalancer.   <<LB>>  ---   - __OAuth scopes__.      ```     nodebalancers:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.

begin
  # Get node balancer statistics
  result = api_instance.get_node_balancer_stats(api_version, node_balancer_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_stats: #{e}"
end
```

#### Using the get_node_balancer_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNodeBalancerStats200Response>, Integer, Hash)> get_node_balancer_stats_with_http_info(api_version, node_balancer_id)

```ruby
begin
  # Get node balancer statistics
  data, status_code, headers = api_instance.get_node_balancer_stats_with_http_info(api_version, node_balancer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNodeBalancerStats200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancer_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |

### Return type

[**GetNodeBalancerStats200Response**](GetNodeBalancerStats200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_node_balancers

> <GetNodeBalancers200Response> get_node_balancers(api_version, opts)

List NodeBalancers

Returns a paginated list of NodeBalancers you have access to.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List NodeBalancers
  result = api_instance.get_node_balancers(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancers: #{e}"
end
```

#### Using the get_node_balancers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNodeBalancers200Response>, Integer, Hash)> get_node_balancers_with_http_info(api_version, opts)

```ruby
begin
  # List NodeBalancers
  data, status_code, headers = api_instance.get_node_balancers_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNodeBalancers200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->get_node_balancers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetNodeBalancers200Response**](GetNodeBalancers200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_node_balancer

> <NodeBalancer5> post_node_balancer(api_version, post_node_balancer_request)

Create a NodeBalancer

Creates a NodeBalancer in the requested Region. Only available in [regions](https://techdocs.akamai.com/linode-api/reference/get-regions) with \"NodeBalancers\" in their `capabilities`.  NodeBalancers require a port Config with at least one backend Node to start serving requests.  When using the Linode CLI to create a NodeBalancer, first create a NodeBalancer without any Configs. Then, create Configs and Nodes for that NodeBalancer with the respective [Create a config](https://techdocs.akamai.com/linode-api/reference/post-node-balancer-config) and [Create a node](https://techdocs.akamai.com/linode-api/reference/post-node-balancer-node) operations.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers create \\   --region us-east \\   --label balancer12345 \\   --client_conn_throttle 0     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_node_balancer_request = LinodeOpenapiClient::PostNodeBalancerRequest.new({region: 'us-east'}) # PostNodeBalancerRequest | Information about the NodeBalancer to create.

begin
  # Create a NodeBalancer
  result = api_instance.post_node_balancer(api_version, post_node_balancer_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->post_node_balancer: #{e}"
end
```

#### Using the post_node_balancer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NodeBalancer5>, Integer, Hash)> post_node_balancer_with_http_info(api_version, post_node_balancer_request)

```ruby
begin
  # Create a NodeBalancer
  data, status_code, headers = api_instance.post_node_balancer_with_http_info(api_version, post_node_balancer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NodeBalancer5>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->post_node_balancer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_node_balancer_request** | [**PostNodeBalancerRequest**](PostNodeBalancerRequest.md) | Information about the NodeBalancer to create. |  |

### Return type

[**NodeBalancer5**](NodeBalancer5.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_node_balancer_config

> <PostNodeBalancerConfig200Response> post_node_balancer_config(api_version, node_balancer_id, opts)

Create a config

Creates a NodeBalancer Config, which allows the NodeBalancer to accept traffic on a new port. You will need to add NodeBalancer Nodes to the new Config before it can actually serve requests.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers config-create 12345 \\   --port 443 \\   --protocol https \\   --algorithm roundrobin \\   --stickiness http_cookie \\   --check http_body \\   --check_interval 90 \\   --check_timeout 10 \\   --check_attempts 3 \\   --check_path \"/test\" \\   --check_body \"it works\" \\   --check_passive true \\   --proxy_protocol \"none\" \\   --ssl_cert \"-----BEGIN CERTIFICATE-----               CERTIFICATE_INFORMATION               -----END CERTIFICATE-----\" \\   --ssl_key \"-----BEGIN PRIVATE KEY-----              PRIVATE_KEY_INFORMATION              -----END PRIVATE KEY-----\" \\   --cipher_suite recommended     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
opts = {
  post_node_balancer_config_request: LinodeOpenapiClient::PostNodeBalancerConfigRequest.new # PostNodeBalancerConfigRequest | Information about the port to configure.
}

begin
  # Create a config
  result = api_instance.post_node_balancer_config(api_version, node_balancer_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->post_node_balancer_config: #{e}"
end
```

#### Using the post_node_balancer_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostNodeBalancerConfig200Response>, Integer, Hash)> post_node_balancer_config_with_http_info(api_version, node_balancer_id, opts)

```ruby
begin
  # Create a config
  data, status_code, headers = api_instance.post_node_balancer_config_with_http_info(api_version, node_balancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostNodeBalancerConfig200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->post_node_balancer_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **post_node_balancer_config_request** | [**PostNodeBalancerConfigRequest**](PostNodeBalancerConfigRequest.md) | Information about the port to configure. | [optional] |

### Return type

[**PostNodeBalancerConfig200Response**](PostNodeBalancerConfig200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_node_balancer_node

> <PostNodeBalancerNode200Response> post_node_balancer_node(api_version, node_balancer_id, config_id, post_node_balancer_node_request)

Create a node

Creates a NodeBalancer Node, a backend that can accept traffic for this NodeBalancer Config. Nodes are routed requests on the configured port based on their status.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers node-create \\   12345 4567 \\   --address 192.168.210.120:80 \\   --label node54321 \\   --weight 50 \\   --mode accept     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
config_id = 56 # Integer | The ID of the NodeBalancer config to access.
post_node_balancer_node_request = LinodeOpenapiClient::PostNodeBalancerNodeRequest.new({address: '192.168.210.120:80', label: 'node54321'}) # PostNodeBalancerNodeRequest | Information about the Node to create.

begin
  # Create a node
  result = api_instance.post_node_balancer_node(api_version, node_balancer_id, config_id, post_node_balancer_node_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->post_node_balancer_node: #{e}"
end
```

#### Using the post_node_balancer_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostNodeBalancerNode200Response>, Integer, Hash)> post_node_balancer_node_with_http_info(api_version, node_balancer_id, config_id, post_node_balancer_node_request)

```ruby
begin
  # Create a node
  data, status_code, headers = api_instance.post_node_balancer_node_with_http_info(api_version, node_balancer_id, config_id, post_node_balancer_node_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostNodeBalancerNode200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->post_node_balancer_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **config_id** | **Integer** | The ID of the NodeBalancer config to access. |  |
| **post_node_balancer_node_request** | [**PostNodeBalancerNodeRequest**](PostNodeBalancerNodeRequest.md) | Information about the Node to create. |  |

### Return type

[**PostNodeBalancerNode200Response**](PostNodeBalancerNode200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_rebuild_node_balancer_config

> <PostRebuildNodeBalancerConfig200Response> post_rebuild_node_balancer_config(api_version, node_balancer_id, config_id, post_rebuild_node_balancer_config_request)

Rebuild a config

Rebuilds a NodeBalancer Config and its Nodes that you have permission to modify.  Use this operation to update a NodeBalancer's Config and Nodes with a single request.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers config-rebuild \\   12345 4567 \\   --port 443 \\   --protocol https \\   --algorithm roundrobin \\   --stickiness http_cookie \\   --check http_body \\   --check_interval 90 \\   --check_timeout 10 \\   --check_attempts 3 \\   --check_path \"/test\" \\   --check_body \"it works\" \\   --check_passive true \\   --proxy_protocol \"none\" \\   --ssl_cert \"-----BEGIN CERTIFICATE-----               CERTIFICATE_INFORMATION               -----END CERTIFICATE-----\" \\   --ssl_key \"-----BEGIN PRIVATE KEY-----              PRIVATE_KEY_INFORMATION              -----END PRIVATE KEY-----\" \\   --cipher_suite recommended \\   --nodes '{\"address\":\"192.168.210.120:80\",\"label\":\"node1\",\"weight\":50,\"mode\":\"accept\"}' \\   --nodes '{\"address\":\"192.168.210.122:80\",\"label\":\"node2\",\"weight\":50,\"mode\":\"accept\"}'     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
config_id = 56 # Integer | The ID of the Config to access.
post_rebuild_node_balancer_config_request = LinodeOpenapiClient::PostRebuildNodeBalancerConfigRequest.new({nodes: [LinodeOpenapiClient::PostRebuildNodeBalancerConfigRequestAllOfNodesInner.new]}) # PostRebuildNodeBalancerConfigRequest | Information about the NodeBalancer Config to rebuild.

begin
  # Rebuild a config
  result = api_instance.post_rebuild_node_balancer_config(api_version, node_balancer_id, config_id, post_rebuild_node_balancer_config_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->post_rebuild_node_balancer_config: #{e}"
end
```

#### Using the post_rebuild_node_balancer_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostRebuildNodeBalancerConfig200Response>, Integer, Hash)> post_rebuild_node_balancer_config_with_http_info(api_version, node_balancer_id, config_id, post_rebuild_node_balancer_config_request)

```ruby
begin
  # Rebuild a config
  data, status_code, headers = api_instance.post_rebuild_node_balancer_config_with_http_info(api_version, node_balancer_id, config_id, post_rebuild_node_balancer_config_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostRebuildNodeBalancerConfig200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->post_rebuild_node_balancer_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **config_id** | **Integer** | The ID of the Config to access. |  |
| **post_rebuild_node_balancer_config_request** | [**PostRebuildNodeBalancerConfigRequest**](PostRebuildNodeBalancerConfigRequest.md) | Information about the NodeBalancer Config to rebuild. |  |

### Return type

[**PostRebuildNodeBalancerConfig200Response**](PostRebuildNodeBalancerConfig200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_node_balancer

> <NodeBalancer3> put_node_balancer(api_version, node_balancer_id, node_balancer2)

Update a NodeBalancer

Updates information about a NodeBalancer you can access.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers update 12345 \\   --label balancer12345 \\   --client_conn_throttle 0     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
node_balancer2 = LinodeOpenapiClient::NodeBalancer2.new # NodeBalancer2 | The information to update.

begin
  # Update a NodeBalancer
  result = api_instance.put_node_balancer(api_version, node_balancer_id, node_balancer2)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->put_node_balancer: #{e}"
end
```

#### Using the put_node_balancer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NodeBalancer3>, Integer, Hash)> put_node_balancer_with_http_info(api_version, node_balancer_id, node_balancer2)

```ruby
begin
  # Update a NodeBalancer
  data, status_code, headers = api_instance.put_node_balancer_with_http_info(api_version, node_balancer_id, node_balancer2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NodeBalancer3>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->put_node_balancer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **node_balancer2** | [**NodeBalancer2**](NodeBalancer2.md) | The information to update. |  |

### Return type

[**NodeBalancer3**](NodeBalancer3.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_node_balancer_config

> <PutNodeBalancerConfig200Response> put_node_balancer_config(api_version, node_balancer_id, config_id, put_node_balancer_config_request)

Update a config

Updates the configuration for a single port on a NodeBalancer.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers config-update \\   12345 4567 \\   --port 443 \\   --protocol https \\   --algorithm roundrobin \\   --stickiness http_cookie \\   --check http_body \\   --check_interval 90 \\   --check_timeout 10 \\   --check_attempts 3 \\   --check_path \"/test\" \\   --check_body \"it works\" \\   --check_passive true \\   --proxy_protocol \"none\" \\   --ssl_cert \"-----BEGIN CERTIFICATE-----               CERTIFICATE_INFORMATION               -----END CERTIFICATE-----\" \\   --ssl_key \"-----BEGIN PRIVATE KEY-----              PRIVATE_KEY_INFORMATION              -----END PRIVATE KEY-----\" \\   --cipher_suite recommended     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
config_id = 56 # Integer | The ID of the Config to access.
put_node_balancer_config_request = LinodeOpenapiClient::PutNodeBalancerConfigRequest.new # PutNodeBalancerConfigRequest | The fields to update.

begin
  # Update a config
  result = api_instance.put_node_balancer_config(api_version, node_balancer_id, config_id, put_node_balancer_config_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->put_node_balancer_config: #{e}"
end
```

#### Using the put_node_balancer_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutNodeBalancerConfig200Response>, Integer, Hash)> put_node_balancer_config_with_http_info(api_version, node_balancer_id, config_id, put_node_balancer_config_request)

```ruby
begin
  # Update a config
  data, status_code, headers = api_instance.put_node_balancer_config_with_http_info(api_version, node_balancer_id, config_id, put_node_balancer_config_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutNodeBalancerConfig200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->put_node_balancer_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **config_id** | **Integer** | The ID of the Config to access. |  |
| **put_node_balancer_config_request** | [**PutNodeBalancerConfigRequest**](PutNodeBalancerConfigRequest.md) | The fields to update. |  |

### Return type

[**PutNodeBalancerConfig200Response**](PutNodeBalancerConfig200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_node_balancer_node

> <PutNodeBalancerNode200Response> put_node_balancer_node(api_version, node_balancer_id, config_id, node_id, put_node_balancer_node_request)

Update a node

Updates information about a Node, a backend for this NodeBalancer's configured port.   <<LB>>  ---   - __CLI__.      ```     linode-cli nodebalancers node-update \\   12345 4567 54321 \\   --address 192.168.210.120:80 \\   --label node54321 \\   --weight 50 \\   --mode accept     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     nodebalancers:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NodeBalancersApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
node_balancer_id = 56 # Integer | The ID of the NodeBalancer to access.
config_id = 56 # Integer | The ID of the Config to access.
node_id = 56 # Integer | The ID of the Node to access.
put_node_balancer_node_request = LinodeOpenapiClient::PutNodeBalancerNodeRequest.new # PutNodeBalancerNodeRequest | The fields to update.

begin
  # Update a node
  result = api_instance.put_node_balancer_node(api_version, node_balancer_id, config_id, node_id, put_node_balancer_node_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->put_node_balancer_node: #{e}"
end
```

#### Using the put_node_balancer_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutNodeBalancerNode200Response>, Integer, Hash)> put_node_balancer_node_with_http_info(api_version, node_balancer_id, config_id, node_id, put_node_balancer_node_request)

```ruby
begin
  # Update a node
  data, status_code, headers = api_instance.put_node_balancer_node_with_http_info(api_version, node_balancer_id, config_id, node_id, put_node_balancer_node_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutNodeBalancerNode200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NodeBalancersApi->put_node_balancer_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **node_balancer_id** | **Integer** | The ID of the NodeBalancer to access. |  |
| **config_id** | **Integer** | The ID of the Config to access. |  |
| **node_id** | **Integer** | The ID of the Node to access. |  |
| **put_node_balancer_node_request** | [**PutNodeBalancerNodeRequest**](PutNodeBalancerNodeRequest.md) | The fields to update. |  |

### Return type

[**PutNodeBalancerNode200Response**](PutNodeBalancerNode200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

