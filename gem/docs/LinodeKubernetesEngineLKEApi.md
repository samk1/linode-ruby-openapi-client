# LinodeOpenapiClient::LinodeKubernetesEngineLKEApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_lke_cluster**](LinodeKubernetesEngineLKEApi.md#delete_lke_cluster) | **DELETE** /{apiVersion}/lke/clusters/{clusterId} | Delete a Kubernetes cluster |
| [**delete_lke_cluster_kubeconfig**](LinodeKubernetesEngineLKEApi.md#delete_lke_cluster_kubeconfig) | **DELETE** /{apiVersion}/lke/clusters/{clusterId}/kubeconfig | Delete a Kubeconfig |
| [**delete_lke_cluster_node**](LinodeKubernetesEngineLKEApi.md#delete_lke_cluster_node) | **DELETE** /{apiVersion}/lke/clusters/{clusterId}/nodes/{nodeId} | Delete a node |
| [**delete_lke_node_pool**](LinodeKubernetesEngineLKEApi.md#delete_lke_node_pool) | **DELETE** /{apiVersion}/lke/clusters/{clusterId}/pools/{poolId} | Delete a node pool |
| [**delete_lke_service_token**](LinodeKubernetesEngineLKEApi.md#delete_lke_service_token) | **DELETE** /{apiVersion}/lke/clusters/{clusterId}/servicetoken | Delete a service token |
| [**get_lke_cluster**](LinodeKubernetesEngineLKEApi.md#get_lke_cluster) | **GET** /{apiVersion}/lke/clusters/{clusterId} | Get a Kubernetes cluster |
| [**get_lke_cluster_api_endpoints**](LinodeKubernetesEngineLKEApi.md#get_lke_cluster_api_endpoints) | **GET** /{apiVersion}/lke/clusters/{clusterId}/api-endpoints | List Kubernetes API endpoints |
| [**get_lke_cluster_dashboard**](LinodeKubernetesEngineLKEApi.md#get_lke_cluster_dashboard) | **GET** /{apiVersion}/lke/clusters/{clusterId}/dashboard | Get a Kubernetes cluster dashboard URL |
| [**get_lke_cluster_kubeconfig**](LinodeKubernetesEngineLKEApi.md#get_lke_cluster_kubeconfig) | **GET** /{apiVersion}/lke/clusters/{clusterId}/kubeconfig | Get a Kubeconfig |
| [**get_lke_cluster_node**](LinodeKubernetesEngineLKEApi.md#get_lke_cluster_node) | **GET** /{apiVersion}/lke/clusters/{clusterId}/nodes/{nodeId} | Get a node |
| [**get_lke_cluster_pools**](LinodeKubernetesEngineLKEApi.md#get_lke_cluster_pools) | **GET** /{apiVersion}/lke/clusters/{clusterId}/pools | List node pools |
| [**get_lke_clusters**](LinodeKubernetesEngineLKEApi.md#get_lke_clusters) | **GET** /{apiVersion}/lke/clusters | List Kubernetes clusters |
| [**get_lke_node_pool**](LinodeKubernetesEngineLKEApi.md#get_lke_node_pool) | **GET** /{apiVersion}/lke/clusters/{clusterId}/pools/{poolId} | Get a node pool |
| [**get_lke_version**](LinodeKubernetesEngineLKEApi.md#get_lke_version) | **GET** /{apiVersion}/lke/versions/{version} | Get a Kubernetes version |
| [**get_lke_versions**](LinodeKubernetesEngineLKEApi.md#get_lke_versions) | **GET** /{apiVersion}/lke/versions | List Kubernetes versions |
| [**post_lke_cluster**](LinodeKubernetesEngineLKEApi.md#post_lke_cluster) | **POST** /{apiVersion}/lke/clusters | Create a Kubernetes cluster |
| [**post_lke_cluster_node_recycle**](LinodeKubernetesEngineLKEApi.md#post_lke_cluster_node_recycle) | **POST** /{apiVersion}/lke/clusters/{clusterId}/nodes/{nodeId}/recycle | Recycle a node |
| [**post_lke_cluster_pool_recycle**](LinodeKubernetesEngineLKEApi.md#post_lke_cluster_pool_recycle) | **POST** /{apiVersion}/lke/clusters/{clusterId}/pools/{poolId}/recycle | Recycle a node pool |
| [**post_lke_cluster_pools**](LinodeKubernetesEngineLKEApi.md#post_lke_cluster_pools) | **POST** /{apiVersion}/lke/clusters/{clusterId}/pools | Create a node pool |
| [**post_lke_cluster_recycle**](LinodeKubernetesEngineLKEApi.md#post_lke_cluster_recycle) | **POST** /{apiVersion}/lke/clusters/{clusterId}/recycle | Recycle cluster nodes |
| [**post_lke_cluster_regenerate**](LinodeKubernetesEngineLKEApi.md#post_lke_cluster_regenerate) | **POST** /{apiVersion}/lke/clusters/{clusterId}/regenerate | Regenerate a Kubernetes cluster |
| [**put_lke_cluster**](LinodeKubernetesEngineLKEApi.md#put_lke_cluster) | **PUT** /{apiVersion}/lke/clusters/{clusterId} | Update a Kubernetes cluster |
| [**put_lke_node_pool**](LinodeKubernetesEngineLKEApi.md#put_lke_node_pool) | **PUT** /{apiVersion}/lke/clusters/{clusterId}/pools/{poolId} | Update a node pool |


## delete_lke_cluster

> Object delete_lke_cluster(api_version, cluster_id)

Delete a Kubernetes cluster

Deletes a Cluster you have permission to `read_write`.  __Deleting a Cluster is a destructive action and cannot be undone.__  Deleting a Cluster:  - Deletes all Linodes in all pools within this Kubernetes cluster - Deletes all supporting Kubernetes services for this Kubernetes cluster (API server, etcd, etc) - Deletes all NodeBalancers created by this Kubernetes cluster - Does not delete any of the volumes created by this Kubernetes cluster   <<LB>>  ---   - __CLI__.      ```     linode-cli lke cluster-delete 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.

begin
  # Delete a Kubernetes cluster
  result = api_instance.delete_lke_cluster(api_version, cluster_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->delete_lke_cluster: #{e}"
end
```

#### Using the delete_lke_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_lke_cluster_with_http_info(api_version, cluster_id)

```ruby
begin
  # Delete a Kubernetes cluster
  data, status_code, headers = api_instance.delete_lke_cluster_with_http_info(api_version, cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->delete_lke_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_lke_cluster_kubeconfig

> Object delete_lke_cluster_kubeconfig(api_version, cluster_id)

Delete a Kubeconfig

Delete and regenerate the Kubeconfig file for a Cluster.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke kubeconfig-delete 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.

begin
  # Delete a Kubeconfig
  result = api_instance.delete_lke_cluster_kubeconfig(api_version, cluster_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->delete_lke_cluster_kubeconfig: #{e}"
end
```

#### Using the delete_lke_cluster_kubeconfig_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_lke_cluster_kubeconfig_with_http_info(api_version, cluster_id)

```ruby
begin
  # Delete a Kubeconfig
  data, status_code, headers = api_instance.delete_lke_cluster_kubeconfig_with_http_info(api_version, cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->delete_lke_cluster_kubeconfig_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_lke_cluster_node

> Object delete_lke_cluster_node(api_version, cluster_id, node_id)

Delete a node

Deletes a specific Node from a Node Pool.  __Deleting a Node is a destructive action and cannot be undone.__  Deleting a Node will reduce the size of the Node Pool it belongs to.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke node-delete 12345 12345-6aa78910bc     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster containing the Node.
node_id = 56 # Integer | The ID of the Node to access.

begin
  # Delete a node
  result = api_instance.delete_lke_cluster_node(api_version, cluster_id, node_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->delete_lke_cluster_node: #{e}"
end
```

#### Using the delete_lke_cluster_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_lke_cluster_node_with_http_info(api_version, cluster_id, node_id)

```ruby
begin
  # Delete a node
  data, status_code, headers = api_instance.delete_lke_cluster_node_with_http_info(api_version, cluster_id, node_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->delete_lke_cluster_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster containing the Node. |  |
| **node_id** | **Integer** | The ID of the Node to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_lke_node_pool

> Object delete_lke_node_pool(api_version, cluster_id, pool_id)

Delete a node pool

Delete a specific Node Pool from a Kubernetes cluster.  __Deleting a Node Pool is a destructive action and cannot be undone.__  Deleting a Node Pool will delete all Linodes within that Pool.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke pool-delete 12345 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.
pool_id = 56 # Integer | ID of the Pool to look up.

begin
  # Delete a node pool
  result = api_instance.delete_lke_node_pool(api_version, cluster_id, pool_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->delete_lke_node_pool: #{e}"
end
```

#### Using the delete_lke_node_pool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_lke_node_pool_with_http_info(api_version, cluster_id, pool_id)

```ruby
begin
  # Delete a node pool
  data, status_code, headers = api_instance.delete_lke_node_pool_with_http_info(api_version, cluster_id, pool_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->delete_lke_node_pool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |
| **pool_id** | **Integer** | ID of the Pool to look up. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_lke_service_token

> Object delete_lke_service_token(api_version, cluster_id)

Delete a service token

Delete and regenerate the service account token for a Cluster.  __Note__. When regenerating a service account token, the Cluster's control plane components and Linode CSI drivers are also restarted and configured with the new token. High Availability Clusters should not experience any disruption, while standard Clusters may experience brief control plane downtime while components are restarted.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke service-token-delete 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the target Kubernetes cluster.

begin
  # Delete a service token
  result = api_instance.delete_lke_service_token(api_version, cluster_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->delete_lke_service_token: #{e}"
end
```

#### Using the delete_lke_service_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_lke_service_token_with_http_info(api_version, cluster_id)

```ruby
begin
  # Delete a service token
  data, status_code, headers = api_instance.delete_lke_service_token_with_http_info(api_version, cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->delete_lke_service_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the target Kubernetes cluster. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lke_cluster

> <GetLkeCluster200Response> get_lke_cluster(api_version, cluster_id)

Get a Kubernetes cluster

Get a specific Cluster by ID.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke cluster-view 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.

begin
  # Get a Kubernetes cluster
  result = api_instance.get_lke_cluster(api_version, cluster_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster: #{e}"
end
```

#### Using the get_lke_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLkeCluster200Response>, Integer, Hash)> get_lke_cluster_with_http_info(api_version, cluster_id)

```ruby
begin
  # Get a Kubernetes cluster
  data, status_code, headers = api_instance.get_lke_cluster_with_http_info(api_version, cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLkeCluster200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |

### Return type

[**GetLkeCluster200Response**](GetLkeCluster200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lke_cluster_api_endpoints

> <GetLkeClusterApiEndpoints200Response> get_lke_cluster_api_endpoints(api_version, cluster_id)

List Kubernetes API endpoints

List the Kubernetes API server endpoints for this cluster. Please note that it often takes 2-5 minutes before the endpoint is ready after first [creating a new cluster](https://techdocs.akamai.com/linode-api/reference/post-lke-cluster).   <<LB>>  ---   - __CLI__.      ```     linode-cli lke api-endpoints-list 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.

begin
  # List Kubernetes API endpoints
  result = api_instance.get_lke_cluster_api_endpoints(api_version, cluster_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster_api_endpoints: #{e}"
end
```

#### Using the get_lke_cluster_api_endpoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLkeClusterApiEndpoints200Response>, Integer, Hash)> get_lke_cluster_api_endpoints_with_http_info(api_version, cluster_id)

```ruby
begin
  # List Kubernetes API endpoints
  data, status_code, headers = api_instance.get_lke_cluster_api_endpoints_with_http_info(api_version, cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLkeClusterApiEndpoints200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster_api_endpoints_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |

### Return type

[**GetLkeClusterApiEndpoints200Response**](GetLkeClusterApiEndpoints200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lke_cluster_dashboard

> <GetLkeClusterDashboard200Response> get_lke_cluster_dashboard(api_version, cluster_id)

Get a Kubernetes cluster dashboard URL

Get a [Kubernetes Dashboard](https://github.com/kubernetes/dashboard) access URL for this Cluster, which enables performance of administrative tasks through a web interface.  Dashboards are installed for Clusters by default.  To access the Cluster Dashboard login prompt, enter the URL in a web browser. Select either __Token__ or __Kubeconfig__ authentication, then select __Sign in__.  For additional guidance on using the Cluster Dashboard, see the [Navigating the Cluster Dashboard](https://www.linode.com/docs/guides/using-the-kubernetes-dashboard-on-lke/#navigating-the-cluster-dashboard) section of our guide on [Using the Kubernetes Dashboard on LKE](https://www.linode.com/docs/guides/using-the-kubernetes-dashboard-on-lke/).   <<LB>>  ---   - __CLI__.      ```     linode-cli lke cluster-dashboard-url 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.

begin
  # Get a Kubernetes cluster dashboard URL
  result = api_instance.get_lke_cluster_dashboard(api_version, cluster_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster_dashboard: #{e}"
end
```

#### Using the get_lke_cluster_dashboard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLkeClusterDashboard200Response>, Integer, Hash)> get_lke_cluster_dashboard_with_http_info(api_version, cluster_id)

```ruby
begin
  # Get a Kubernetes cluster dashboard URL
  data, status_code, headers = api_instance.get_lke_cluster_dashboard_with_http_info(api_version, cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLkeClusterDashboard200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster_dashboard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |

### Return type

[**GetLkeClusterDashboard200Response**](GetLkeClusterDashboard200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lke_cluster_kubeconfig

> <GetLkeClusterKubeconfig200Response> get_lke_cluster_kubeconfig(api_version, cluster_id)

Get a Kubeconfig

Get the Kubeconfig file for a Cluster. Please note that it often takes 2-5 minutes before the Kubeconfig file is ready after first [creating a new cluster](https://techdocs.akamai.com/linode-api/reference/post-lke-cluster).   <<LB>>  ---   - __CLI__.      ```     linode-cli lke kubeconfig-view 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.

begin
  # Get a Kubeconfig
  result = api_instance.get_lke_cluster_kubeconfig(api_version, cluster_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster_kubeconfig: #{e}"
end
```

#### Using the get_lke_cluster_kubeconfig_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLkeClusterKubeconfig200Response>, Integer, Hash)> get_lke_cluster_kubeconfig_with_http_info(api_version, cluster_id)

```ruby
begin
  # Get a Kubeconfig
  data, status_code, headers = api_instance.get_lke_cluster_kubeconfig_with_http_info(api_version, cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLkeClusterKubeconfig200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster_kubeconfig_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |

### Return type

[**GetLkeClusterKubeconfig200Response**](GetLkeClusterKubeconfig200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lke_cluster_node

> <GetLkeClusterNode200Response> get_lke_cluster_node(api_version, cluster_id, node_id)

Get a node

Returns the values for a specified node object.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke node-view 123456 12345-6aa78910bc     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster containing the Node.
node_id = 56 # Integer | The ID of the Node to access.

begin
  # Get a node
  result = api_instance.get_lke_cluster_node(api_version, cluster_id, node_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster_node: #{e}"
end
```

#### Using the get_lke_cluster_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLkeClusterNode200Response>, Integer, Hash)> get_lke_cluster_node_with_http_info(api_version, cluster_id, node_id)

```ruby
begin
  # Get a node
  data, status_code, headers = api_instance.get_lke_cluster_node_with_http_info(api_version, cluster_id, node_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLkeClusterNode200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster containing the Node. |  |
| **node_id** | **Integer** | The ID of the Node to access. |  |

### Return type

[**GetLkeClusterNode200Response**](GetLkeClusterNode200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lke_cluster_pools

> <GetLkeClusterPools200Response> get_lke_cluster_pools(api_version, cluster_id)

List node pools

Returns all active Node Pools on a Kubernetes cluster.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke pools-list 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.

begin
  # List node pools
  result = api_instance.get_lke_cluster_pools(api_version, cluster_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster_pools: #{e}"
end
```

#### Using the get_lke_cluster_pools_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLkeClusterPools200Response>, Integer, Hash)> get_lke_cluster_pools_with_http_info(api_version, cluster_id)

```ruby
begin
  # List node pools
  data, status_code, headers = api_instance.get_lke_cluster_pools_with_http_info(api_version, cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLkeClusterPools200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_cluster_pools_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |

### Return type

[**GetLkeClusterPools200Response**](GetLkeClusterPools200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lke_clusters

> <GetLkeClusters200Response> get_lke_clusters(api_version)

List Kubernetes clusters

Lists current Kubernetes clusters available on your account.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke clusters-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List Kubernetes clusters
  result = api_instance.get_lke_clusters(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_clusters: #{e}"
end
```

#### Using the get_lke_clusters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLkeClusters200Response>, Integer, Hash)> get_lke_clusters_with_http_info(api_version)

```ruby
begin
  # List Kubernetes clusters
  data, status_code, headers = api_instance.get_lke_clusters_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLkeClusters200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_clusters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetLkeClusters200Response**](GetLkeClusters200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lke_node_pool

> <GetLkeNodePool200Response> get_lke_node_pool(api_version, cluster_id, pool_id)

Get a node pool

Get a specific Node Pool by ID.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke pool-view 12345 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.
pool_id = 56 # Integer | ID of the Pool to look up.

begin
  # Get a node pool
  result = api_instance.get_lke_node_pool(api_version, cluster_id, pool_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_node_pool: #{e}"
end
```

#### Using the get_lke_node_pool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLkeNodePool200Response>, Integer, Hash)> get_lke_node_pool_with_http_info(api_version, cluster_id, pool_id)

```ruby
begin
  # Get a node pool
  data, status_code, headers = api_instance.get_lke_node_pool_with_http_info(api_version, cluster_id, pool_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLkeNodePool200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_node_pool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |
| **pool_id** | **Integer** | ID of the Pool to look up. |  |

### Return type

[**GetLkeNodePool200Response**](GetLkeNodePool200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lke_version

> <GetLkeVersions200ResponseDataInner> get_lke_version(api_version, version)

Get a Kubernetes version

View a Kubernetes version available for deployment to a Kubernetes cluster.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke version-view 1.27     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
version = 'version_example' # String | The LKE version to view.

begin
  # Get a Kubernetes version
  result = api_instance.get_lke_version(api_version, version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_version: #{e}"
end
```

#### Using the get_lke_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLkeVersions200ResponseDataInner>, Integer, Hash)> get_lke_version_with_http_info(api_version, version)

```ruby
begin
  # Get a Kubernetes version
  data, status_code, headers = api_instance.get_lke_version_with_http_info(api_version, version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLkeVersions200ResponseDataInner>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **version** | **String** | The LKE version to view. |  |

### Return type

[**GetLkeVersions200ResponseDataInner**](GetLkeVersions200ResponseDataInner.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lke_versions

> <GetLkeVersions200Response> get_lke_versions(api_version)

List Kubernetes versions

List the Kubernetes versions available for deployment to a Kubernetes cluster.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke versions-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List Kubernetes versions
  result = api_instance.get_lke_versions(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_versions: #{e}"
end
```

#### Using the get_lke_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLkeVersions200Response>, Integer, Hash)> get_lke_versions_with_http_info(api_version)

```ruby
begin
  # List Kubernetes versions
  data, status_code, headers = api_instance.get_lke_versions_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLkeVersions200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->get_lke_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetLkeVersions200Response**](GetLkeVersions200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_lke_cluster

> <PostLkeCluster200Response> post_lke_cluster(api_version, opts)

Create a Kubernetes cluster

Creates a Kubernetes cluster. The Kubernetes cluster will be created asynchronously. You can use the events system to determine when the Kubernetes cluster is ready to use. Please note that it often takes 2-5 minutes before the [Kubernetes API endpoints](https://techdocs.akamai.com/linode-api/reference/get-lke-cluster-api-endpoints) and the [Kubeconfig file](https://techdocs.akamai.com/linode-api/reference/get-lke-cluster-kubeconfig) for the new cluster are ready.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke cluster-create \\   --label cluster12345 \\   --region us-central \\   --k8s_version 1.27 \\   --control_plane.high_availability true \\   --node_pools.type g6-standard-4 --node_pools.count 6 \\   --node_pools.type g6-standard-8 --node_pools.count 3 \\   --node_pools.autoscaler.enabled true \\   --node_pools.autoscaler.max 12 \\   --node_pools.autoscaler.min 3 \\   --tags ecomm     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_lke_cluster_request: LinodeOpenapiClient::PostLkeClusterRequest.new({region: 'us-central', label: 'lkecluster12345', k8s_version: '1.27', node_pools: [LinodeOpenapiClient::PostLkeClusterRequestNodePoolsInner.new({count: 6, type: 'g6-standard-4'})]}) # PostLkeClusterRequest | Configuration for the Kubernetes cluster.
}

begin
  # Create a Kubernetes cluster
  result = api_instance.post_lke_cluster(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster: #{e}"
end
```

#### Using the post_lke_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostLkeCluster200Response>, Integer, Hash)> post_lke_cluster_with_http_info(api_version, opts)

```ruby
begin
  # Create a Kubernetes cluster
  data, status_code, headers = api_instance.post_lke_cluster_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostLkeCluster200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_lke_cluster_request** | [**PostLkeClusterRequest**](PostLkeClusterRequest.md) | Configuration for the Kubernetes cluster. | [optional] |

### Return type

[**PostLkeCluster200Response**](PostLkeCluster200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_lke_cluster_node_recycle

> Object post_lke_cluster_node_recycle(api_version, cluster_id, node_id)

Recycle a node

Recycles an individual Node in the designated Kubernetes Cluster. The Node will be deleted and replaced with a new Linode, which may take a few minutes. Replacement Nodes are installed with the latest available patch for the Cluster's Kubernetes Version.  __Any local storage on deleted Linodes (such as `hostPath` and `emptyDir` volumes, or `local` PersistentVolumes) will be erased.__   <<LB>>  ---   - __CLI__.      ```     linode-cli lke node-recycle 12345 12345-6aa78910bc     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster containing the Node.
node_id = 'node_id_example' # String | ID of the Node to be recycled.

begin
  # Recycle a node
  result = api_instance.post_lke_cluster_node_recycle(api_version, cluster_id, node_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster_node_recycle: #{e}"
end
```

#### Using the post_lke_cluster_node_recycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_lke_cluster_node_recycle_with_http_info(api_version, cluster_id, node_id)

```ruby
begin
  # Recycle a node
  data, status_code, headers = api_instance.post_lke_cluster_node_recycle_with_http_info(api_version, cluster_id, node_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster_node_recycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster containing the Node. |  |
| **node_id** | **String** | ID of the Node to be recycled. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_lke_cluster_pool_recycle

> Object post_lke_cluster_pool_recycle(api_version, cluster_id, pool_id)

Recycle a node pool

Recycles a Node Pool for the designated Kubernetes Cluster. All Linodes within the Node Pool will be deleted and replaced with new Linodes on a rolling basis, which may take several minutes. Replacement Nodes are installed with the latest available patch for the Cluster's Kubernetes Version.  __Any local storage on deleted Linodes (such as `hostPath` and `emptyDir` volumes, or `local` PersistentVolumes) will be erased.__   <<LB>>  ---   - __CLI__.      ```     linode-cli lke pool-recycle 12345 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster this Node Pool is attached to.
pool_id = 56 # Integer | ID of the Node Pool to be recycled.

begin
  # Recycle a node pool
  result = api_instance.post_lke_cluster_pool_recycle(api_version, cluster_id, pool_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster_pool_recycle: #{e}"
end
```

#### Using the post_lke_cluster_pool_recycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_lke_cluster_pool_recycle_with_http_info(api_version, cluster_id, pool_id)

```ruby
begin
  # Recycle a node pool
  data, status_code, headers = api_instance.post_lke_cluster_pool_recycle_with_http_info(api_version, cluster_id, pool_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster_pool_recycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster this Node Pool is attached to. |  |
| **pool_id** | **Integer** | ID of the Node Pool to be recycled. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_lke_cluster_pools

> <PostLkeClusterPools200Response> post_lke_cluster_pools(api_version, cluster_id, post_lke_cluster_pools_request)

Create a node pool

Creates a new Node Pool for the designated Kubernetes cluster.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke pool-create 12345 \\   --type g6-standard-4 \\   --count 6 \\   --tags example-tag \\   --autoscaler.enabled true \\   --autoscaler.max 12 \\   --autoscaler.min 3     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.
post_lke_cluster_pools_request = LinodeOpenapiClient::PostLkeClusterPoolsRequest.new({type: 'g6-standard-4', count: 6}) # PostLkeClusterPoolsRequest | Configuration for the Node Pool.

begin
  # Create a node pool
  result = api_instance.post_lke_cluster_pools(api_version, cluster_id, post_lke_cluster_pools_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster_pools: #{e}"
end
```

#### Using the post_lke_cluster_pools_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostLkeClusterPools200Response>, Integer, Hash)> post_lke_cluster_pools_with_http_info(api_version, cluster_id, post_lke_cluster_pools_request)

```ruby
begin
  # Create a node pool
  data, status_code, headers = api_instance.post_lke_cluster_pools_with_http_info(api_version, cluster_id, post_lke_cluster_pools_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostLkeClusterPools200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster_pools_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |
| **post_lke_cluster_pools_request** | [**PostLkeClusterPoolsRequest**](PostLkeClusterPoolsRequest.md) | Configuration for the Node Pool. |  |

### Return type

[**PostLkeClusterPools200Response**](PostLkeClusterPools200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_lke_cluster_recycle

> Object post_lke_cluster_recycle(api_version, cluster_id)

Recycle cluster nodes

Recycles all nodes in all pools of a designated Kubernetes Cluster. All Linodes within the Cluster will be deleted and replaced with new Linodes on a rolling basis, which may take several minutes. Replacement Nodes are installed with the latest available [patch version](https://github.com/kubernetes/community/blob/master/contributors/design-proposals/release/versioning.md#kubernetes-release-versioning) for the Cluster's current Kubernetes minor release.  __Any local storage on deleted Linodes (such as `hostPath` and `emptyDir` volumes, or `local` PersistentVolumes) will be erased.__   <<LB>>  ---   - __CLI__.      ```     linode-cli lke cluster-nodes-recycle 12345     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster which contains nodes to be recycled.

begin
  # Recycle cluster nodes
  result = api_instance.post_lke_cluster_recycle(api_version, cluster_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster_recycle: #{e}"
end
```

#### Using the post_lke_cluster_recycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_lke_cluster_recycle_with_http_info(api_version, cluster_id)

```ruby
begin
  # Recycle cluster nodes
  data, status_code, headers = api_instance.post_lke_cluster_recycle_with_http_info(api_version, cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster_recycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster which contains nodes to be recycled. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_lke_cluster_regenerate

> Object post_lke_cluster_regenerate(api_version, cluster_id, opts)

Regenerate a Kubernetes cluster

Regenerate the Kubeconfig file and/or the service account token for a Cluster.  This is a helper operation that allows performing both the [Delete a Kubeconfig](https://techdocs.akamai.com/linode-api/reference/delete-lke-cluster-kubeconfig) and the [Delete a service token](https://techdocs.akamai.com/linode-api/reference/delete-lke-service-token) operations with a single request.  When using this operation, at least one of `kubeconfig` or `servicetoken` is required.  __Note__. When regenerating a service account token, the Cluster's control plane components and Linode CSI drivers are also restarted and configured with the new token. High Availability Clusters should not experience any disruption, while standard Clusters may experience brief control plane downtime while components are restarted.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke regenerate 12345 \\     --kubeconfig true \\     --servicetoken true     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the target Kubernetes cluster.
opts = {
  post_lke_cluster_regenerate_request: LinodeOpenapiClient::PostLkeClusterRegenerateRequest.new # PostLkeClusterRegenerateRequest | The Kubernetes Cluster Regenerate request object.
}

begin
  # Regenerate a Kubernetes cluster
  result = api_instance.post_lke_cluster_regenerate(api_version, cluster_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster_regenerate: #{e}"
end
```

#### Using the post_lke_cluster_regenerate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_lke_cluster_regenerate_with_http_info(api_version, cluster_id, opts)

```ruby
begin
  # Regenerate a Kubernetes cluster
  data, status_code, headers = api_instance.post_lke_cluster_regenerate_with_http_info(api_version, cluster_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->post_lke_cluster_regenerate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the target Kubernetes cluster. |  |
| **post_lke_cluster_regenerate_request** | [**PostLkeClusterRegenerateRequest**](PostLkeClusterRegenerateRequest.md) | The Kubernetes Cluster Regenerate request object. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_lke_cluster

> <PutLkeCluster200Response> put_lke_cluster(api_version, cluster_id, opts)

Update a Kubernetes cluster

Updates a Kubernetes cluster.   <<LB>>  ---   - __CLI__.      ```     linode-cli lke cluster-update 12345 \\   --label lkecluster54321 \\   --control_plane.high_availability true \\   --k8s_version 1.27 \\   --tags ecomm \\   --tags blog \\   --tags prod \\   --tags monitoring     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.
opts = {
  put_lke_cluster_request: LinodeOpenapiClient::PutLkeClusterRequest.new # PutLkeClusterRequest | The fields to update the Kubernetes cluster.
}

begin
  # Update a Kubernetes cluster
  result = api_instance.put_lke_cluster(api_version, cluster_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->put_lke_cluster: #{e}"
end
```

#### Using the put_lke_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutLkeCluster200Response>, Integer, Hash)> put_lke_cluster_with_http_info(api_version, cluster_id, opts)

```ruby
begin
  # Update a Kubernetes cluster
  data, status_code, headers = api_instance.put_lke_cluster_with_http_info(api_version, cluster_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutLkeCluster200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->put_lke_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |
| **put_lke_cluster_request** | [**PutLkeClusterRequest**](PutLkeClusterRequest.md) | The fields to update the Kubernetes cluster. | [optional] |

### Return type

[**PutLkeCluster200Response**](PutLkeCluster200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_lke_node_pool

> <PutLkeNodePool200Response> put_lke_node_pool(api_version, cluster_id, pool_id, opts)

Update a node pool

Updates a node pool's count, labels and taints, and autoscaler configuration.  Linodes are created or deleted to match changes to the Node Pool's count.  Specifying labels or taints on update overwrites any previous values, and updates existing nodes with the new values without a recycle.  __Any local storage on deleted Linodes (such as `hostPath` and `emptyDir` volumes, or `local` PersistentVolumes) will be erased.__   <<LB>>  ---   - __CLI__.      ```     linode-cli lke pool-update 12345 456 \\   --count 6 \\   --autoscaler.enabled true \\   --autoscaler.max 12 \\   --autoscaler.min 3 \\     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     lke:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
cluster_id = 56 # Integer | ID of the Kubernetes cluster to look up.
pool_id = 56 # Integer | ID of the Pool to look up.
opts = {
  put_lke_node_pool_request: LinodeOpenapiClient::PutLkeNodePoolRequest.new # PutLkeNodePoolRequest | The fields to update.
}

begin
  # Update a node pool
  result = api_instance.put_lke_node_pool(api_version, cluster_id, pool_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->put_lke_node_pool: #{e}"
end
```

#### Using the put_lke_node_pool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutLkeNodePool200Response>, Integer, Hash)> put_lke_node_pool_with_http_info(api_version, cluster_id, pool_id, opts)

```ruby
begin
  # Update a node pool
  data, status_code, headers = api_instance.put_lke_node_pool_with_http_info(api_version, cluster_id, pool_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutLkeNodePool200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeKubernetesEngineLKEApi->put_lke_node_pool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **cluster_id** | **Integer** | ID of the Kubernetes cluster to look up. |  |
| **pool_id** | **Integer** | ID of the Pool to look up. |  |
| **put_lke_node_pool_request** | [**PutLkeNodePoolRequest**](PutLkeNodePoolRequest.md) | The fields to update. | [optional] |

### Return type

[**PutLkeNodePool200Response**](PutLkeNodePool200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

