# LinodeOpenapiClient::VPCsApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_vpc**](VPCsApi.md#delete_vpc) | **DELETE** /{apiVersion}/vpcs/{vpcId} | Delete a VPC |
| [**delete_vpc_subnet**](VPCsApi.md#delete_vpc_subnet) | **DELETE** /{apiVersion}/vpcs/{vpcId}/subnets/{vpcSubnetId} | Delete a VPC subnet |
| [**get_vpc**](VPCsApi.md#get_vpc) | **GET** /{apiVersion}/vpcs/{vpcId} | Get a VPC |
| [**get_vpc_ips**](VPCsApi.md#get_vpc_ips) | **GET** /{apiVersion}/vpcs/{vpcId}/ips | List a VPC&#39;s IP addresses |
| [**get_vpc_subnet**](VPCsApi.md#get_vpc_subnet) | **GET** /{apiVersion}/vpcs/{vpcId}/subnets/{vpcSubnetId} | Get a VPC subnet |
| [**get_vpc_subnets**](VPCsApi.md#get_vpc_subnets) | **GET** /{apiVersion}/vpcs/{vpcId}/subnets | List VPC subnets |
| [**get_vpcs**](VPCsApi.md#get_vpcs) | **GET** /{apiVersion}/vpcs | List VPCs |
| [**get_vpcs_ips**](VPCsApi.md#get_vpcs_ips) | **GET** /{apiVersion}/vpcs/ips | List VPC IP addresses |
| [**post_vpc**](VPCsApi.md#post_vpc) | **POST** /{apiVersion}/vpcs | Create a VPC |
| [**post_vpc_subnet**](VPCsApi.md#post_vpc_subnet) | **POST** /{apiVersion}/vpcs/{vpcId}/subnets | Create a VPC subnet |
| [**put_vpc**](VPCsApi.md#put_vpc) | **PUT** /{apiVersion}/vpcs/{vpcId} | Update a VPC |
| [**put_vpc_subnet**](VPCsApi.md#put_vpc_subnet) | **PUT** /{apiVersion}/vpcs/{vpcId}/subnets/{vpcSubnetId} | Update a VPC subnet |


## delete_vpc

> Object delete_vpc(api_version, vpc_id)

Delete a VPC

Delete a single VPC and all of its Subnets.  - The User accessing this operation must have `read_write` grants to the VPC. - A successful request triggers a `vpc_delete` event and `subnet_delete` events for each deleted VPC Subnet. - All of the VPC's Subnets must be eligible for deletion. Accordingly, all Configuration Profile Interfaces that each Subnet is assigned to must first be deleted. If those Interfaces are active, the associated Linodes must first be shut down before they can be removed. If any Subnet cannot be deleted, then neither the VPC nor any of its Subnets are deleted.   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs delete $vpcId     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     vpc:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
vpc_id = 56 # Integer | The `id` of the VPC.

begin
  # Delete a VPC
  result = api_instance.delete_vpc(api_version, vpc_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->delete_vpc: #{e}"
end
```

#### Using the delete_vpc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_vpc_with_http_info(api_version, vpc_id)

```ruby
begin
  # Delete a VPC
  data, status_code, headers = api_instance.delete_vpc_with_http_info(api_version, vpc_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->delete_vpc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **vpc_id** | **Integer** | The &#x60;id&#x60; of the VPC. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_vpc_subnet

> Object delete_vpc_subnet(api_version, vpc_id, vpc_subnet_id)

Delete a VPC subnet

Delete a single VPC Subnet.  The user accessing this operation must have `read_write` grants to the VPC. A successful request triggers a `subnet_delete` event.  __Note__. You need to delete all the Configuration Profile Interfaces that this Subnet is assigned to before you can delete it. If those Interfaces are active, the associated Linode needs to be shut down before they can be removed.   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs subnet-delete $vpcId $vpcSubnetId     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     vpc:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
vpc_id = 56 # Integer | The `id` of the VPC.
vpc_subnet_id = 56 # Integer | The `id` of the VPC Subnet.

begin
  # Delete a VPC subnet
  result = api_instance.delete_vpc_subnet(api_version, vpc_id, vpc_subnet_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->delete_vpc_subnet: #{e}"
end
```

#### Using the delete_vpc_subnet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_vpc_subnet_with_http_info(api_version, vpc_id, vpc_subnet_id)

```ruby
begin
  # Delete a VPC subnet
  data, status_code, headers = api_instance.delete_vpc_subnet_with_http_info(api_version, vpc_id, vpc_subnet_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->delete_vpc_subnet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **vpc_id** | **Integer** | The &#x60;id&#x60; of the VPC. |  |
| **vpc_subnet_id** | **Integer** | The &#x60;id&#x60; of the VPC Subnet. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc

> <GetVpc200Response> get_vpc(api_version, vpc_id)

Get a VPC

Get information about a single VPC.   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs view $vpcId     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
vpc_id = 56 # Integer | The `id` of the VPC.

begin
  # Get a VPC
  result = api_instance.get_vpc(api_version, vpc_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpc: #{e}"
end
```

#### Using the get_vpc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVpc200Response>, Integer, Hash)> get_vpc_with_http_info(api_version, vpc_id)

```ruby
begin
  # Get a VPC
  data, status_code, headers = api_instance.get_vpc_with_http_info(api_version, vpc_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVpc200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **vpc_id** | **Integer** | The &#x60;id&#x60; of the VPC. |  |

### Return type

[**GetVpc200Response**](GetVpc200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc_ips

> <GetVpcIps200Response> get_vpc_ips(api_version, vpc_id, opts)

List a VPC's IP addresses

Returns a paginated list of IP addresses for a single VPC.   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs ip-list 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
vpc_id = 56 # Integer | The `id` of the VPC.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List a VPC's IP addresses
  result = api_instance.get_vpc_ips(api_version, vpc_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpc_ips: #{e}"
end
```

#### Using the get_vpc_ips_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVpcIps200Response>, Integer, Hash)> get_vpc_ips_with_http_info(api_version, vpc_id, opts)

```ruby
begin
  # List a VPC's IP addresses
  data, status_code, headers = api_instance.get_vpc_ips_with_http_info(api_version, vpc_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVpcIps200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpc_ips_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **vpc_id** | **Integer** | The &#x60;id&#x60; of the VPC. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetVpcIps200Response**](GetVpcIps200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc_subnet

> <GetVpcSubnet200Response> get_vpc_subnet(api_version, vpc_id, vpc_subnet_id)

Get a VPC subnet

Get information about a single VPC Subnet.   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs subnet-view $vpcId $vpcSubnetId     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
vpc_id = 56 # Integer | The `id` of the VPC.
vpc_subnet_id = 56 # Integer | The `id` of the VPC Subnet.

begin
  # Get a VPC subnet
  result = api_instance.get_vpc_subnet(api_version, vpc_id, vpc_subnet_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpc_subnet: #{e}"
end
```

#### Using the get_vpc_subnet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVpcSubnet200Response>, Integer, Hash)> get_vpc_subnet_with_http_info(api_version, vpc_id, vpc_subnet_id)

```ruby
begin
  # Get a VPC subnet
  data, status_code, headers = api_instance.get_vpc_subnet_with_http_info(api_version, vpc_id, vpc_subnet_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVpcSubnet200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpc_subnet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **vpc_id** | **Integer** | The &#x60;id&#x60; of the VPC. |  |
| **vpc_subnet_id** | **Integer** | The &#x60;id&#x60; of the VPC Subnet. |  |

### Return type

[**GetVpcSubnet200Response**](GetVpcSubnet200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc_subnets

> <GetVpcSubnets200Response> get_vpc_subnets(api_version, vpc_id, opts)

List VPC subnets

Get information about all VPC Subnets associated with a VPC.   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs subnets-list $vpcId     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
vpc_id = 56 # Integer | The `id` of the VPC.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List VPC subnets
  result = api_instance.get_vpc_subnets(api_version, vpc_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpc_subnets: #{e}"
end
```

#### Using the get_vpc_subnets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVpcSubnets200Response>, Integer, Hash)> get_vpc_subnets_with_http_info(api_version, vpc_id, opts)

```ruby
begin
  # List VPC subnets
  data, status_code, headers = api_instance.get_vpc_subnets_with_http_info(api_version, vpc_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVpcSubnets200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpc_subnets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **vpc_id** | **Integer** | The &#x60;id&#x60; of the VPC. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetVpcSubnets200Response**](GetVpcSubnets200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpcs

> <GetVpcs200Response> get_vpcs(api_version, opts)

List VPCs

Display all VPCs on your account.   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List VPCs
  result = api_instance.get_vpcs(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpcs: #{e}"
end
```

#### Using the get_vpcs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVpcs200Response>, Integer, Hash)> get_vpcs_with_http_info(api_version, opts)

```ruby
begin
  # List VPCs
  data, status_code, headers = api_instance.get_vpcs_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVpcs200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpcs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetVpcs200Response**](GetVpcs200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpcs_ips

> <GetVpcsIps200Response> get_vpcs_ips(api_version, opts)

List VPC IP addresses

Returns a paginated list of all VPC IP addresses and address ranges on your account.  __Note__. If a Linode has several configuration profiles that include a VPC interface, address information for all of them is listed in the response. Since VPCs can use the same address space, you may see duplicate IP addresses.   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs ip list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List VPC IP addresses
  result = api_instance.get_vpcs_ips(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpcs_ips: #{e}"
end
```

#### Using the get_vpcs_ips_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVpcsIps200Response>, Integer, Hash)> get_vpcs_ips_with_http_info(api_version, opts)

```ruby
begin
  # List VPC IP addresses
  data, status_code, headers = api_instance.get_vpcs_ips_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVpcsIps200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->get_vpcs_ips_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetVpcsIps200Response**](GetVpcsIps200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_vpc

> <PostVpc200Response> post_vpc(api_version, post_vpc_request)

Create a VPC

Create a new VPC and optionally associated VPC Subnets.  - Users must have the `add_vpc` grant to access this operation. - A successful request triggers a `vpc_create` event and `subnet_create` events for any created VPC Subnets.  Once a VPC is created, it can be attached to a Linode by assigning a VPC Subnet to one of the Linode's Configuration Profile Interfaces. This step can be accomplished with the following operations:  - [Create a Linode](https://techdocs.akamai.com/linode-api/reference/post-linode-instance) - [Create a config profile](https://techdocs.akamai.com/linode-api/reference/post-add-linode-config) - [Update a config profile](https://techdocs.akamai.com/linode-api/reference/put-linode-config) - [Add a configuration profile interface](https://techdocs.akamai.com/linode-api/reference/post-linode-config-interface)   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs create \\   --description \"A description of my VPC.\" \\   --label cool-vpc \\   --region us-east \\   --subnets.label cool-vpc-subnet \\   --subnets.ipv4 10.0.1.0/24     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     vpc:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_vpc_request = LinodeOpenapiClient::PostVpcRequest.new({region: 'us-east', label: 'cool-vpc'}) # PostVpcRequest | VPC Create request object.

begin
  # Create a VPC
  result = api_instance.post_vpc(api_version, post_vpc_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->post_vpc: #{e}"
end
```

#### Using the post_vpc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostVpc200Response>, Integer, Hash)> post_vpc_with_http_info(api_version, post_vpc_request)

```ruby
begin
  # Create a VPC
  data, status_code, headers = api_instance.post_vpc_with_http_info(api_version, post_vpc_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostVpc200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->post_vpc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_vpc_request** | [**PostVpcRequest**](PostVpcRequest.md) | VPC Create request object. |  |

### Return type

[**PostVpc200Response**](PostVpc200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_vpc_subnet

> <PostVpcSubnet200Response> post_vpc_subnet(api_version, vpc_id, post_vpc_subnet_request)

Create a VPC subnet

Create a VPC Subnet.  - The User accessing this operation must have `read_write` grants to the VPC. - A successful request triggers a `subnet_create` event.  Once a VPC Subnet is created, it can be attached to a Linode by assigning the Subnet to one of the Linode's Configuration Profile Interfaces. This step can be accomplished with the following operations:  - [Create a Linode](https://techdocs.akamai.com/linode-api/reference/post-linode-instance) - [Create a config profile](https://techdocs.akamai.com/linode-api/reference/post-add-linode-config) - [Update a config profile](https://techdocs.akamai.com/linode-api/reference/put-linode-config) - [Add a configuration profile interface](https://techdocs.akamai.com/linode-api/reference/post-linode-config-interface)   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs subnet-create $vpcId \\   --label cool-vpc-subnet \\   --ipv4 10.0.1.0/24     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     vpc:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
vpc_id = 56 # Integer | The `id` of the VPC.
post_vpc_subnet_request = LinodeOpenapiClient::PostVpcSubnetRequest.new({label: 'cool-vpc-subnet', ipv4: '10.0.1.0/24'}) # PostVpcSubnetRequest | VPC Subnet Create request object.

begin
  # Create a VPC subnet
  result = api_instance.post_vpc_subnet(api_version, vpc_id, post_vpc_subnet_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->post_vpc_subnet: #{e}"
end
```

#### Using the post_vpc_subnet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostVpcSubnet200Response>, Integer, Hash)> post_vpc_subnet_with_http_info(api_version, vpc_id, post_vpc_subnet_request)

```ruby
begin
  # Create a VPC subnet
  data, status_code, headers = api_instance.post_vpc_subnet_with_http_info(api_version, vpc_id, post_vpc_subnet_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostVpcSubnet200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->post_vpc_subnet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **vpc_id** | **Integer** | The &#x60;id&#x60; of the VPC. |  |
| **post_vpc_subnet_request** | [**PostVpcSubnetRequest**](PostVpcSubnetRequest.md) | VPC Subnet Create request object. |  |

### Return type

[**PostVpcSubnet200Response**](PostVpcSubnet200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_vpc

> <PutVpc200Response> put_vpc(api_version, vpc_id, put_vpc_request)

Update a VPC

Update an existing VPC.  - The User accessing this operation must have `read_write` grants to the VPC. - A successful request triggers a `vpc_update` event.  To update a VPC's Subnet, run the [Update a VPC subnet](https://techdocs.akamai.com/linode-api/reference/put-vpc-subnet) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs update $vpcId \\   --description \"A description of my VPC.\"   --label cool-vpc     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     vpc:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
vpc_id = 56 # Integer | The `id` of the VPC.
put_vpc_request = LinodeOpenapiClient::PutVpcRequest.new # PutVpcRequest | VPC Update request object.

begin
  # Update a VPC
  result = api_instance.put_vpc(api_version, vpc_id, put_vpc_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->put_vpc: #{e}"
end
```

#### Using the put_vpc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutVpc200Response>, Integer, Hash)> put_vpc_with_http_info(api_version, vpc_id, put_vpc_request)

```ruby
begin
  # Update a VPC
  data, status_code, headers = api_instance.put_vpc_with_http_info(api_version, vpc_id, put_vpc_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutVpc200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->put_vpc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **vpc_id** | **Integer** | The &#x60;id&#x60; of the VPC. |  |
| **put_vpc_request** | [**PutVpcRequest**](PutVpcRequest.md) | VPC Update request object. |  |

### Return type

[**PutVpc200Response**](PutVpc200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_vpc_subnet

> <PutVpcSubnet200Response> put_vpc_subnet(api_version, vpc_id, vpc_subnet_id, put_vpc_subnet_request)

Update a VPC subnet

Update a VPC Subnet.  - The User accessing this operation must have `read_write` grants to the VPC. - A successful request triggers a `subnet_update` event.   <<LB>>  ---   - __CLI__.      ```     linode-cli vpcs subnet-update $vpcId \\   --label cool-vpc-subnet     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     vpc:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::VPCsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
vpc_id = 56 # Integer | The `id` of the VPC.
vpc_subnet_id = 56 # Integer | The `id` of the VPC Subnet.
put_vpc_subnet_request = LinodeOpenapiClient::PutVpcSubnetRequest.new # PutVpcSubnetRequest | VPC Update request object.

begin
  # Update a VPC subnet
  result = api_instance.put_vpc_subnet(api_version, vpc_id, vpc_subnet_id, put_vpc_subnet_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->put_vpc_subnet: #{e}"
end
```

#### Using the put_vpc_subnet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutVpcSubnet200Response>, Integer, Hash)> put_vpc_subnet_with_http_info(api_version, vpc_id, vpc_subnet_id, put_vpc_subnet_request)

```ruby
begin
  # Update a VPC subnet
  data, status_code, headers = api_instance.put_vpc_subnet_with_http_info(api_version, vpc_id, vpc_subnet_id, put_vpc_subnet_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutVpcSubnet200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling VPCsApi->put_vpc_subnet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **vpc_id** | **Integer** | The &#x60;id&#x60; of the VPC. |  |
| **vpc_subnet_id** | **Integer** | The &#x60;id&#x60; of the VPC Subnet. |  |
| **put_vpc_subnet_request** | [**PutVpcSubnetRequest**](PutVpcSubnetRequest.md) | VPC Update request object. |  |

### Return type

[**PutVpcSubnet200Response**](PutVpcSubnet200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

