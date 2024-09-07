# LinodeOpenapiClient::NetworkingApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_firewall**](NetworkingApi.md#delete_firewall) | **DELETE** /{apiVersion}/networking/firewalls/{firewallId} | Delete a firewall |
| [**delete_firewall_device**](NetworkingApi.md#delete_firewall_device) | **DELETE** /{apiVersion}/networking/firewalls/{firewallId}/devices/{deviceId} | Delete a firewall device |
| [**delete_ipv6_range**](NetworkingApi.md#delete_ipv6_range) | **DELETE** /{apiVersion}/networking/ipv6/ranges/{range} | Delete an IPv6 range |
| [**get_firewall**](NetworkingApi.md#get_firewall) | **GET** /{apiVersion}/networking/firewalls/{firewallId} | Get a firewall |
| [**get_firewall_device**](NetworkingApi.md#get_firewall_device) | **GET** /{apiVersion}/networking/firewalls/{firewallId}/devices/{deviceId} | Get a firewall device |
| [**get_firewall_devices**](NetworkingApi.md#get_firewall_devices) | **GET** /{apiVersion}/networking/firewalls/{firewallId}/devices | List firewall devices |
| [**get_firewall_rules**](NetworkingApi.md#get_firewall_rules) | **GET** /{apiVersion}/networking/firewalls/{firewallId}/rules | List firewall rules |
| [**get_firewalls**](NetworkingApi.md#get_firewalls) | **GET** /{apiVersion}/networking/firewalls | List firewalls |
| [**get_ip**](NetworkingApi.md#get_ip) | **GET** /{apiVersion}/networking/ips/{address} | Get an IP address |
| [**get_ips**](NetworkingApi.md#get_ips) | **GET** /{apiVersion}/networking/ips | List IP addresses |
| [**get_ipv6_pools**](NetworkingApi.md#get_ipv6_pools) | **GET** /{apiVersion}/networking/ipv6/pools | List IPv6 pools |
| [**get_ipv6_range**](NetworkingApi.md#get_ipv6_range) | **GET** /{apiVersion}/networking/ipv6/ranges/{range} | Get an IPv6 range |
| [**get_ipv6_ranges**](NetworkingApi.md#get_ipv6_ranges) | **GET** /{apiVersion}/networking/ipv6/ranges | List IPv6 ranges |
| [**get_vlans**](NetworkingApi.md#get_vlans) | **GET** /{apiVersion}/networking/vlans | List VLANs |
| [**post_allocate_ip**](NetworkingApi.md#post_allocate_ip) | **POST** /{apiVersion}/networking/ips | Allocate an IP address |
| [**post_assign_ips**](NetworkingApi.md#post_assign_ips) | **POST** /{apiVersion}/networking/ips/assign | Assign IP addresses |
| [**post_assign_ipv4s**](NetworkingApi.md#post_assign_ipv4s) | **POST** /{apiVersion}/networking/ipv4/assign | Assign IPv4s to Linodes |
| [**post_firewall_device**](NetworkingApi.md#post_firewall_device) | **POST** /{apiVersion}/networking/firewalls/{firewallId}/devices | Create a firewall device |
| [**post_firewalls**](NetworkingApi.md#post_firewalls) | **POST** /{apiVersion}/networking/firewalls | Create a firewall |
| [**post_ipv6_range**](NetworkingApi.md#post_ipv6_range) | **POST** /{apiVersion}/networking/ipv6/ranges | Create an IPv6 range |
| [**post_share_ips**](NetworkingApi.md#post_share_ips) | **POST** /{apiVersion}/networking/ips/share | Share IP addresses |
| [**post_share_ipv4s**](NetworkingApi.md#post_share_ipv4s) | **POST** /{apiVersion}/networking/ipv4/share | Configure IPv4 sharing |
| [**put_firewall**](NetworkingApi.md#put_firewall) | **PUT** /{apiVersion}/networking/firewalls/{firewallId} | Update a firewall |
| [**put_firewall_rules**](NetworkingApi.md#put_firewall_rules) | **PUT** /{apiVersion}/networking/firewalls/{firewallId}/rules | Update firewall rules |
| [**put_ip**](NetworkingApi.md#put_ip) | **PUT** /{apiVersion}/networking/ips/{address} | Update an IP address&#39;s RDNS |


## delete_firewall

> Object delete_firewall(api_version, firewall_id)

Delete a firewall

Delete a Firewall resource by its ID. This removes all of the Firewall's Rules from any services that the Firewall was assigned to.  - Assigned Linodes must not have any ongoing live migrations.  - A `firewall_delete` Event is generated when this operation returns successfully.   <<LB>>  ---   - __CLI__.      ```     linode-cli firewalls delete 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     firewall:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
firewall_id = 56 # Integer | ID of the Firewall to access.

begin
  # Delete a firewall
  result = api_instance.delete_firewall(api_version, firewall_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->delete_firewall: #{e}"
end
```

#### Using the delete_firewall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_firewall_with_http_info(api_version, firewall_id)

```ruby
begin
  # Delete a firewall
  data, status_code, headers = api_instance.delete_firewall_with_http_info(api_version, firewall_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->delete_firewall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **firewall_id** | **Integer** | ID of the Firewall to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_firewall_device

> Object delete_firewall_device(api_version, firewall_id, device_id)

Delete a firewall device

Removes a Firewall Device, which removes a Firewall from the service it was assigned to by the Device. This removes all of the Firewall's Rules from the service. If any other Firewalls have been assigned to the service, then those Rules remain in effect.  - Assigned Linodes must not have any ongoing live migrations.  - A `firewall_device_remove` Event is generated when the Firewall Device is removed successfully.   <<LB>>  ---   - __CLI__.      ```     linode-cli firewalls device-delete 123 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     firewall:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
firewall_id = 56 # Integer | ID of the Firewall to access.
device_id = 56 # Integer | ID of the Firewall Device to access.

begin
  # Delete a firewall device
  result = api_instance.delete_firewall_device(api_version, firewall_id, device_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->delete_firewall_device: #{e}"
end
```

#### Using the delete_firewall_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_firewall_device_with_http_info(api_version, firewall_id, device_id)

```ruby
begin
  # Delete a firewall device
  data, status_code, headers = api_instance.delete_firewall_device_with_http_info(api_version, firewall_id, device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->delete_firewall_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **firewall_id** | **Integer** | ID of the Firewall to access. |  |
| **device_id** | **Integer** | ID of the Firewall Device to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ipv6_range

> Object delete_ipv6_range(api_version, range)

Delete an IPv6 range

Removes this IPv6 range from your account and disconnects the range from any assigned Linodes.  __Note__. Shared IPv6 ranges cannot be deleted at this time. Please contact Customer Support for assistance.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking v6-range-delete 2001:0db8::     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
range = 'range_example' # String | The IPv6 range to access. Corresponds to the `range` property of objects returned from the [List IPv6 ranges](https://techdocs.akamai.com/linode-api/reference/get-ipv6-ranges) operation.  __Note__. Omit the prefix length of the IPv6 range.

begin
  # Delete an IPv6 range
  result = api_instance.delete_ipv6_range(api_version, range)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->delete_ipv6_range: #{e}"
end
```

#### Using the delete_ipv6_range_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_ipv6_range_with_http_info(api_version, range)

```ruby
begin
  # Delete an IPv6 range
  data, status_code, headers = api_instance.delete_ipv6_range_with_http_info(api_version, range)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->delete_ipv6_range_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **range** | **String** | The IPv6 range to access. Corresponds to the &#x60;range&#x60; property of objects returned from the [List IPv6 ranges](https://techdocs.akamai.com/linode-api/reference/get-ipv6-ranges) operation.  __Note__. Omit the prefix length of the IPv6 range. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_firewall

> <GetFirewall200Response> get_firewall(api_version, firewall_id)

Get a firewall

Get a specific Firewall resource by its ID. The Firewall's Devices will not be returned in the response. Instead, run the [List firewall devices](https://techdocs.akamai.com/linode-api/reference/get-firewall-devices) operation to review them.   <<LB>>  ---   - __CLI__.      ```     linode-cli firewalls view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     firewall:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
firewall_id = 56 # Integer | ID of the Firewall to access.

begin
  # Get a firewall
  result = api_instance.get_firewall(api_version, firewall_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_firewall: #{e}"
end
```

#### Using the get_firewall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFirewall200Response>, Integer, Hash)> get_firewall_with_http_info(api_version, firewall_id)

```ruby
begin
  # Get a firewall
  data, status_code, headers = api_instance.get_firewall_with_http_info(api_version, firewall_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFirewall200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_firewall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **firewall_id** | **Integer** | ID of the Firewall to access. |  |

### Return type

[**GetFirewall200Response**](GetFirewall200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_firewall_device

> <GetFirewallDevice200Response> get_firewall_device(api_version, firewall_id, device_id)

Get a firewall device

Returns information for a Firewall Device, which assigns a Firewall to a service (referred to as the Device's `entity`).   <<LB>>  ---   - __CLI__.      ```     linode-cli firewalls device-view \\   123 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     firewall:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
firewall_id = 56 # Integer | ID of the Firewall to access.
device_id = 56 # Integer | ID of the Firewall Device to access.

begin
  # Get a firewall device
  result = api_instance.get_firewall_device(api_version, firewall_id, device_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_firewall_device: #{e}"
end
```

#### Using the get_firewall_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFirewallDevice200Response>, Integer, Hash)> get_firewall_device_with_http_info(api_version, firewall_id, device_id)

```ruby
begin
  # Get a firewall device
  data, status_code, headers = api_instance.get_firewall_device_with_http_info(api_version, firewall_id, device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFirewallDevice200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_firewall_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **firewall_id** | **Integer** | ID of the Firewall to access. |  |
| **device_id** | **Integer** | ID of the Firewall Device to access. |  |

### Return type

[**GetFirewallDevice200Response**](GetFirewallDevice200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_firewall_devices

> <GetFirewallDevices200Response> get_firewall_devices(api_version, firewall_id, opts)

List firewall devices

Returns a paginated list of a Firewall's Devices. A Firewall Device assigns a Firewall to a service (referred to as the Device's `entity`).   <<LB>>  ---   - __CLI__.      ```     linode-cli firewalls devices-list 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     firewall:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
firewall_id = 56 # Integer | ID of the Firewall to access.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List firewall devices
  result = api_instance.get_firewall_devices(api_version, firewall_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_firewall_devices: #{e}"
end
```

#### Using the get_firewall_devices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFirewallDevices200Response>, Integer, Hash)> get_firewall_devices_with_http_info(api_version, firewall_id, opts)

```ruby
begin
  # List firewall devices
  data, status_code, headers = api_instance.get_firewall_devices_with_http_info(api_version, firewall_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFirewallDevices200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_firewall_devices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **firewall_id** | **Integer** | ID of the Firewall to access. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetFirewallDevices200Response**](GetFirewallDevices200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_firewall_rules

> <GetFirewallRules200Response> get_firewall_rules(api_version, firewall_id)

List firewall rules

Returns the inbound and outbound Rules for a Firewall.   <<LB>>  ---   - __CLI__.      ```     linode-cli firewalls rules-list 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     firewall:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
firewall_id = 56 # Integer | ID of the Firewall to access.

begin
  # List firewall rules
  result = api_instance.get_firewall_rules(api_version, firewall_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_firewall_rules: #{e}"
end
```

#### Using the get_firewall_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFirewallRules200Response>, Integer, Hash)> get_firewall_rules_with_http_info(api_version, firewall_id)

```ruby
begin
  # List firewall rules
  data, status_code, headers = api_instance.get_firewall_rules_with_http_info(api_version, firewall_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFirewallRules200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_firewall_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **firewall_id** | **Integer** | ID of the Firewall to access. |  |

### Return type

[**GetFirewallRules200Response**](GetFirewallRules200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_firewalls

> <GetFirewalls200Response> get_firewalls(api_version, opts)

List firewalls

Returns a paginated list of accessible Firewalls.   <<LB>>  ---   - __CLI__.      ```     linode-cli firewalls list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     firewall:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List firewalls
  result = api_instance.get_firewalls(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_firewalls: #{e}"
end
```

#### Using the get_firewalls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFirewalls200Response>, Integer, Hash)> get_firewalls_with_http_info(api_version, opts)

```ruby
begin
  # List firewalls
  data, status_code, headers = api_instance.get_firewalls_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFirewalls200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_firewalls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetFirewalls200Response**](GetFirewalls200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ip

> <GetIp200Response> get_ip(api_version, address)

Get an IP address

Returns information about a single IP Address on your Account.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking ip-view 97.107.143.141     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
address = 'address_example' # String | The address to operate on.

begin
  # Get an IP address
  result = api_instance.get_ip(api_version, address)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_ip: #{e}"
end
```

#### Using the get_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIp200Response>, Integer, Hash)> get_ip_with_http_info(api_version, address)

```ruby
begin
  # Get an IP address
  data, status_code, headers = api_instance.get_ip_with_http_info(api_version, address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIp200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **address** | **String** | The address to operate on. |  |

### Return type

[**GetIp200Response**](GetIp200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ips

> <GetIps200Response> get_ips(api_version, opts)

List IP addresses

Returns a paginated list of IP addresses on your account, excluding private addresses.  __Note__. Use the `skip_ipv6_rdns` query string to improve performance if your application frequently accesses this operation and doesn't require IPv6 RDNS data.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking ips-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  skip_ipv6_rdns: true # Boolean | When `true`, the `rdns` property for any `ipv6` type addresses always returns `null` regardless of whether RDNS data exists for the address.
}

begin
  # List IP addresses
  result = api_instance.get_ips(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_ips: #{e}"
end
```

#### Using the get_ips_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIps200Response>, Integer, Hash)> get_ips_with_http_info(api_version, opts)

```ruby
begin
  # List IP addresses
  data, status_code, headers = api_instance.get_ips_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIps200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_ips_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **skip_ipv6_rdns** | **Boolean** | When &#x60;true&#x60;, the &#x60;rdns&#x60; property for any &#x60;ipv6&#x60; type addresses always returns &#x60;null&#x60; regardless of whether RDNS data exists for the address. | [optional][default to false] |

### Return type

[**GetIps200Response**](GetIps200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ipv6_pools

> <GetIpv6Pools200Response> get_ipv6_pools(api_version, opts)

List IPv6 pools

Displays the IPv6 pools on your Account. A pool of IPv6 addresses are routed to all of your Linodes in a single [region](https://techdocs.akamai.com/linode-api/reference/get-regions). Any Linode on your Account may bring up any address in this pool at any time, with no external configuration required.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking v6-pools     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List IPv6 pools
  result = api_instance.get_ipv6_pools(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_ipv6_pools: #{e}"
end
```

#### Using the get_ipv6_pools_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIpv6Pools200Response>, Integer, Hash)> get_ipv6_pools_with_http_info(api_version, opts)

```ruby
begin
  # List IPv6 pools
  data, status_code, headers = api_instance.get_ipv6_pools_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIpv6Pools200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_ipv6_pools_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetIpv6Pools200Response**](GetIpv6Pools200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ipv6_range

> <GetIpv6Range200Response> get_ipv6_range(api_version, range)

Get an IPv6 range

View IPv6 range information.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking v6-range-view 2001:0db8::     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
range = 'range_example' # String | The IPv6 range to access. Corresponds to the `range` property of objects returned from the [List IPv6 ranges](https://techdocs.akamai.com/linode-api/reference/get-ipv6-ranges) operation.  __Note__. Omit the prefix length of the IPv6 range.

begin
  # Get an IPv6 range
  result = api_instance.get_ipv6_range(api_version, range)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_ipv6_range: #{e}"
end
```

#### Using the get_ipv6_range_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIpv6Range200Response>, Integer, Hash)> get_ipv6_range_with_http_info(api_version, range)

```ruby
begin
  # Get an IPv6 range
  data, status_code, headers = api_instance.get_ipv6_range_with_http_info(api_version, range)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIpv6Range200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_ipv6_range_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **range** | **String** | The IPv6 range to access. Corresponds to the &#x60;range&#x60; property of objects returned from the [List IPv6 ranges](https://techdocs.akamai.com/linode-api/reference/get-ipv6-ranges) operation.  __Note__. Omit the prefix length of the IPv6 range. |  |

### Return type

[**GetIpv6Range200Response**](GetIpv6Range200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ipv6_ranges

> <GetIpv6Ranges200Response> get_ipv6_ranges(api_version, opts)

List IPv6 ranges

Displays the IPv6 ranges on your Account.    - An IPv6 range is a `/64` or `/54` block of IPv6 addresses routed to a single Linode in a given [region](https://techdocs.akamai.com/linode-api/reference/get-regions).    - Your Linode is responsible for routing individual addresses in the range, or handling traffic for all the addresses in the range.    - Run the [Create an IPv6 range](https://techdocs.akamai.com/linode-api/reference/post-ipv6-range) operation to add a `/64` or `/56` block of IPv6 addresses to your account.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking v6-ranges     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List IPv6 ranges
  result = api_instance.get_ipv6_ranges(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_ipv6_ranges: #{e}"
end
```

#### Using the get_ipv6_ranges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIpv6Ranges200Response>, Integer, Hash)> get_ipv6_ranges_with_http_info(api_version, opts)

```ruby
begin
  # List IPv6 ranges
  data, status_code, headers = api_instance.get_ipv6_ranges_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIpv6Ranges200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_ipv6_ranges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetIpv6Ranges200Response**](GetIpv6Ranges200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vlans

> <GetVlans200Response> get_vlans(api_version, opts)

List VLANs

Returns a list of all Virtual Local Area Networks (VLANs) on your Account. VLANs provide a mechanism for secure communication between two or more Linodes that are assigned to the same VLAN and are both within the same Layer 2 broadcast domain.  VLANs are created and attached to Linodes by using the `interfaces` property for the following operations:  - [Create a Linode](https://techdocs.akamai.com/linode-api/reference/post-linode-instance) - [Create a config profile](https://techdocs.akamai.com/linode-api/reference/post-add-linode-config) - [Update a config profile](https://techdocs.akamai.com/linode-api/reference/put-linode-config)  There are several ways to detach a VLAN from a Linode:  - [Update](https://techdocs.akamai.com/linode-api/reference/put-linode-config) the active Configuration Profile to remove the VLAN Interface, then [reboot](https://techdocs.akamai.com/linode-api/reference/post-reboot-linode-instance) the Linode. - [Create a config profile](https://techdocs.akamai.com/linode-api/reference/post-add-linode-config) without the VLAN Interface, then [reboot](https://techdocs.akamai.com/linode-api/reference/post-reboot-linode-instance) the Linode into the new Configuration Profile. - [Delete](https://techdocs.akamai.com/linode-api/reference/delete-linode-instance) the Linode.  __Note__. Only Next Generation Network (NGN) data centers support VLANs. Run the [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions) operation to view the capabilities of data center regions. If a VLAN is attached to your Linode and you attempt to migrate or clone it to a non-NGN data center, the migration or cloning will not initiate. If a Linode cannot be migrated because of an incompatibility, you will be prompted to select a different data center or contact support.  __Note__. See the [VLANs Overview](https://www.linode.com/docs/products/networking/vlans/#technical-specifications) to view additional specifications and limitations.   <<LB>>  ---   - __CLI__.      ```     linode-cli vlans list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List VLANs
  result = api_instance.get_vlans(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_vlans: #{e}"
end
```

#### Using the get_vlans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVlans200Response>, Integer, Hash)> get_vlans_with_http_info(api_version, opts)

```ruby
begin
  # List VLANs
  data, status_code, headers = api_instance.get_vlans_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVlans200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->get_vlans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetVlans200Response**](GetVlans200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_allocate_ip

> <PostAllocateIp200Response> post_allocate_ip(api_version, post_allocate_ip_request)

Allocate an IP address

Allocates a new IPv4 Address on your Account. The Linode must be configured to support additional addresses - please [Open a support ticket](https://techdocs.akamai.com/linode-api/reference/post-ticket) requesting additional addresses before attempting allocation.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking ip-add \\   --type ipv4 \\   --public true \\   --linode_id 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_write linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_allocate_ip_request = LinodeOpenapiClient::PostAllocateIpRequest.new({type: 'ipv4', public: true, linode_id: 123}) # PostAllocateIpRequest | Information about the address you are creating.

begin
  # Allocate an IP address
  result = api_instance.post_allocate_ip(api_version, post_allocate_ip_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_allocate_ip: #{e}"
end
```

#### Using the post_allocate_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAllocateIp200Response>, Integer, Hash)> post_allocate_ip_with_http_info(api_version, post_allocate_ip_request)

```ruby
begin
  # Allocate an IP address
  data, status_code, headers = api_instance.post_allocate_ip_with_http_info(api_version, post_allocate_ip_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAllocateIp200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_allocate_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_allocate_ip_request** | [**PostAllocateIpRequest**](PostAllocateIpRequest.md) | Information about the address you are creating. |  |

### Return type

[**PostAllocateIp200Response**](PostAllocateIp200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_assign_ips

> Object post_assign_ips(api_version, post_assign_ips_request)

Assign IP addresses

Assign multiple IPv4 addresses and/or IPv6 ranges to multiple Linodes in one Region. This allows swapping, shuffling, or otherwise reorganizing IPs to your Linodes.  The following restrictions apply:  - All Linodes involved must have at least one public IPv4 address after assignment. - Linodes may have no more than one assigned private IPv4 address. - Linodes may have no more than one assigned IPv6 range. - Shared IP addresses cannot be swapped between Linodes.  [Open a support ticket](https://techdocs.akamai.com/linode-api/reference/post-ticket) to request additional IPv4 addresses or IPv6 ranges beyond standard account limits.  __Note__. Removing an IP address that has been set as a Managed Linode's `ssh.ip` causes the Managed Linode's SSH access settings to reset to their default values.  To view and configure Managed Linode SSH settings, use the following operations:  - [Get a Linode's managed settings](https://techdocs.akamai.com/linode-api/reference/get-managed-linode-setting) - [Update a Linode's managed settings](https://techdocs.akamai.com/linode-api/reference/put-managed-linode-setting)  __Note__. Addresses with an active 1:1 NAT to a VPC Interface address cannot be assigned to other Linodes.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking ip-assign \\   --region us-east \\   --assignments.address 192.0.2.1 \\   --assignments.linode_id 123 \\   --assignments.address 2001:db8:3c4d:15::/64 \\   --assignments.linode_id 234     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_write linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_assign_ips_request = LinodeOpenapiClient::PostAssignIpsRequest.new({assignments: [LinodeOpenapiClient::PostAssignIpsRequestAssignmentsInner.new({linode_id: 123, address: '192.0.2.1'})], region: 'us-east'}) # PostAssignIpsRequest | Information about what IPv4 address or IPv6 range to assign, and to which Linode.

begin
  # Assign IP addresses
  result = api_instance.post_assign_ips(api_version, post_assign_ips_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_assign_ips: #{e}"
end
```

#### Using the post_assign_ips_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_assign_ips_with_http_info(api_version, post_assign_ips_request)

```ruby
begin
  # Assign IP addresses
  data, status_code, headers = api_instance.post_assign_ips_with_http_info(api_version, post_assign_ips_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_assign_ips_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_assign_ips_request** | [**PostAssignIpsRequest**](PostAssignIpsRequest.md) | Information about what IPv4 address or IPv6 range to assign, and to which Linode. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_assign_ipv4s

> Object post_assign_ipv4s(api_version, post_assign_ipv4s_request)

Assign IPv4s to Linodes

This operation is equivalent to [Assign IP addresses](https://techdocs.akamai.com/linode-api/reference/post-assign-ips).  Assign multiple IPv4 addresses and/or IPv6 ranges to multiple Linodes in one Region. This allows swapping, shuffling, or otherwise reorganizing IPs to your Linodes.  The following restrictions apply:  - All Linodes involved must have at least one public IPv4 address after assignment. - Linodes may have no more than one assigned private IPv4 address. - Linodes may have no more than one assigned IPv6 range.  [Open a support ticket](https://techdocs.akamai.com/linode-api/reference/post-ticket) to request additional IPv4 addresses or IPv6 ranges beyond standard account limits.  __Note__. Removing an IP address that has been set as a Managed Linode's `ssh.ip` causes the Managed Linode's SSH access settings to reset to their default values.  To view and configure Managed Linode SSH settings, use the following operations: - [Get a Linode's managed settings](https://techdocs.akamai.com/linode-api/reference/get-managed-linode-setting) - [Update a Linode's managed settings](https://techdocs.akamai.com/linode-api/reference/put-managed-linode-setting)   <<LB>>  ---   - __CLI__.      ```     linode-cli networking ip-assign \\   --region us-east \\   --assignments.address 192.0.2.1 \\   --assignments.linode_id 123 \\   --assignments.address 2001:db8:3c4d:15::/64 \\   --assignments.linode_id 234     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_write linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_assign_ipv4s_request = LinodeOpenapiClient::PostAssignIpv4sRequest.new({assignments: [LinodeOpenapiClient::PostAssignIpv4sRequestAssignmentsInner.new({address: '192.0.2.1', linode_id: 123})], region: 'us-east'}) # PostAssignIpv4sRequest | Information about what IPv4 address to assign, and to which Linode.

begin
  # Assign IPv4s to Linodes
  result = api_instance.post_assign_ipv4s(api_version, post_assign_ipv4s_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_assign_ipv4s: #{e}"
end
```

#### Using the post_assign_ipv4s_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_assign_ipv4s_with_http_info(api_version, post_assign_ipv4s_request)

```ruby
begin
  # Assign IPv4s to Linodes
  data, status_code, headers = api_instance.post_assign_ipv4s_with_http_info(api_version, post_assign_ipv4s_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_assign_ipv4s_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_assign_ipv4s_request** | [**PostAssignIpv4sRequest**](PostAssignIpv4sRequest.md) | Information about what IPv4 address to assign, and to which Linode. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_firewall_device

> <PostFirewallDevice200Response> post_firewall_device(api_version, firewall_id, opts)

Create a firewall device

Creates a Firewall Device, which assigns a Firewall to a service (referred to as the Device's `entity`) and applies the Firewall's Rules to the device.  - Currently, Devices with `linode` and `nodebalancer` entity types are accepted.  - Firewalls only apply to inbound TCP traffic to NodeBalancers.  - A Firewall can be assigned to multiple services at a time.  - A service can have one active, assigned Firewall at a time. Additional disabled Firewalls can be assigned to a service, but they cannot be enabled if another active Firewall is already assigned to the same service.  - Assigned Linodes must not have any ongoing live migrations.  - A `firewall_device_add` Event is generated when the Firewall Device is added successfully.   <<LB>>  ---   - __CLI__.      ```     linode-cli firewalls device-create 123 \\   --id 456 \\   --type \"linode\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     firewall:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
firewall_id = 56 # Integer | ID of the Firewall to access.
opts = {
  post_firewall_device_request: LinodeOpenapiClient::PostFirewallDeviceRequest.new({id: 123, type: 'linode'}) # PostFirewallDeviceRequest | 
}

begin
  # Create a firewall device
  result = api_instance.post_firewall_device(api_version, firewall_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_firewall_device: #{e}"
end
```

#### Using the post_firewall_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostFirewallDevice200Response>, Integer, Hash)> post_firewall_device_with_http_info(api_version, firewall_id, opts)

```ruby
begin
  # Create a firewall device
  data, status_code, headers = api_instance.post_firewall_device_with_http_info(api_version, firewall_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostFirewallDevice200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_firewall_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **firewall_id** | **Integer** | ID of the Firewall to access. |  |
| **post_firewall_device_request** | [**PostFirewallDeviceRequest**](PostFirewallDeviceRequest.md) |  | [optional] |

### Return type

[**PostFirewallDevice200Response**](PostFirewallDevice200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_firewalls

> <PostFirewalls200Response> post_firewalls(api_version, opts)

Create a firewall

Creates a Firewall to filter network traffic.  - Use the `rules` property to create inbound and outbound access rules.  - Use the `devices` property to assign the Firewall to a service and apply its Rules to the device. Requires `read_write` [user grant](https://techdocs.akamai.com/linode-api/reference/get-user-grants) to the device. Currently, Firewalls can be assigned to Linode compute instances and NodeBalancers.  - A Firewall can be assigned to multiple services at a time.  - A Firewall can be assigned during Linode creation by utilizing the `firewall_id` [Create a Linode](https://techdocs.akamai.com/linode-api/reference/post-linode-instance) property.  - A service can have one active, assigned Firewall at a time.  Additional disabled Firewalls can be assigned to a service, but they cannot be enabled if another active Firewall is already assigned to the same service.  - Firewalls apply to all of a Linode's non-`vlan` purpose Configuration Profile Interfaces.  - Assigned Linodes must not have any ongoing live migrations.  - A `firewall_create` Event is generated when this operation succeeds.   <<LB>>  ---   - __CLI__.      ```     linode-cli firewalls create \\   --label example-firewall \\   --rules.outbound_policy ACCEPT \\   --rules.inbound_policy DROP \\   --rules.inbound '[{\"protocol\": \"TCP\", \"ports\": \"22, 80, 8080, 443\", \"addresses\": {\"ipv4\": [\"192.0.2.0/24\", \"198.51.100.2/32\"], \"ipv6\": [\"2001:DB8::/128\"]}, \"action\": \"ACCEPT\"}]' \\   --rules.outbound '[{\"protocol\": \"TCP\", \"ports\": \"49152-65535\", \"addresses\": {\"ipv4\": [\"192.0.2.0/24\", \"198.51.100.2/32\"],\"ipv6\": [\"2001:DB8::/128\"]}, \"action\": \"DROP\", \"label\": \"outbound-rule123\", \"description\": \"An example outbound rule description.\"}]'     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     firewall:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_firewalls_request: LinodeOpenapiClient::PostFirewallsRequest.new({rules: LinodeOpenapiClient::PostFirewallsRequestRules.new, label: 'firewall123'}) # PostFirewallsRequest | Creates a Firewall object that can be applied to a service to filter the service's network traffic.
}

begin
  # Create a firewall
  result = api_instance.post_firewalls(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_firewalls: #{e}"
end
```

#### Using the post_firewalls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostFirewalls200Response>, Integer, Hash)> post_firewalls_with_http_info(api_version, opts)

```ruby
begin
  # Create a firewall
  data, status_code, headers = api_instance.post_firewalls_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostFirewalls200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_firewalls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_firewalls_request** | [**PostFirewallsRequest**](PostFirewallsRequest.md) | Creates a Firewall object that can be applied to a service to filter the service&#39;s network traffic. | [optional] |

### Return type

[**PostFirewalls200Response**](PostFirewalls200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ipv6_range

> <PostIpv6Range200Response> post_ipv6_range(api_version, post_ipv6_range_request)

Create an IPv6 range

Creates an IPv6 Range and assigns it based on the provided Linode or route target IPv6 SLAAC address. See the `ipv6` property when running the [Get a Linode](https://techdocs.akamai.com/linode-api/reference/get-linode-instance) operation to view a Linode's IPv6 SLAAC address.  - Either `linode_id` or `route_target` is required in a request. - `linode_id` and `route_target` are mutually exclusive. Submitting values for both properties in a request results in an error. - Upon a successful request, an IPv6 range is created in the [region](https://techdocs.akamai.com/linode-api/reference/get-regions) that corresponds to the provided `linode_id` or `route_target`. - Your Linode is responsible for routing individual addresses in the range, or handling traffic for all the addresses in the range. - Run the [Assign IP addresses](https://techdocs.akamai.com/linode-api/reference/post-assign-ips) operation to re-assign IPv6 Ranges to your Linodes.  __Note__. The following restrictions apply:    - A Linode can only have one IPv6 range targeting its SLAAC address.   - An account can only have one IPv6 range in each [region](https://techdocs.akamai.com/linode-api/reference/get-regions).   - [Open a support ticket](https://techdocs.akamai.com/linode-api/reference/post-ticket) to request expansion of these restrictions.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking v6-range-create \\   --linode_id 123 \\   --prefix_length 64     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_write linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_ipv6_range_request = LinodeOpenapiClient::PostIpv6RangeRequest.new({prefix_length: 56}) # PostIpv6RangeRequest | Information about the IPv6 range to create.

begin
  # Create an IPv6 range
  result = api_instance.post_ipv6_range(api_version, post_ipv6_range_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_ipv6_range: #{e}"
end
```

#### Using the post_ipv6_range_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostIpv6Range200Response>, Integer, Hash)> post_ipv6_range_with_http_info(api_version, post_ipv6_range_request)

```ruby
begin
  # Create an IPv6 range
  data, status_code, headers = api_instance.post_ipv6_range_with_http_info(api_version, post_ipv6_range_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostIpv6Range200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_ipv6_range_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_ipv6_range_request** | [**PostIpv6RangeRequest**](PostIpv6RangeRequest.md) | Information about the IPv6 range to create. |  |

### Return type

[**PostIpv6Range200Response**](PostIpv6Range200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_share_ips

> Object post_share_ips(api_version, post_share_ips_request)

Share IP addresses

Configure shared IPs.  IP sharing allows IP address reassignment (also referred to as IP failover) from one Linode to another if the primary Linode becomes unresponsive. This means that requests to the primary Linode's IP address can be automatically rerouted to secondary Linodes at the configured shared IP addresses.  IP failover requires configuration of a failover service (such as [Keepalived](https://www.linode.com/docs/guides/ip-failover-keepalived)) within the internal system of the primary Linode.  __Note__. A public IPv4 address cannot be shared if it is configured for a 1:1 NAT on a `vpc` purpose Configuration Profile Interface.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking ip-share \\   --linode_id 123 \\   --ips 192.0.2.1 \\   --ips 2001:db8:3c4d:15::     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_write linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_share_ips_request = LinodeOpenapiClient::PostShareIpsRequest.new({ips: ["192.0.2.1", "2001: db8: 3c4d: 15: : "], linode_id: 123}) # PostShareIpsRequest | Information about what IPs to share with which Linode.

begin
  # Share IP addresses
  result = api_instance.post_share_ips(api_version, post_share_ips_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_share_ips: #{e}"
end
```

#### Using the post_share_ips_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_share_ips_with_http_info(api_version, post_share_ips_request)

```ruby
begin
  # Share IP addresses
  data, status_code, headers = api_instance.post_share_ips_with_http_info(api_version, post_share_ips_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_share_ips_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_share_ips_request** | [**PostShareIpsRequest**](PostShareIpsRequest.md) | Information about what IPs to share with which Linode. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_share_ipv4s

> Object post_share_ipv4s(api_version, post_share_ips_request)

Configure IPv4 sharing

This operation is equivalent to [Share IP addresses](https://techdocs.akamai.com/linode-api/reference/post-share-ips).  Configure shared IPs.  IP sharing allows IP address reassignment (also referred to as IP failover) from one Linode to another if the primary Linode becomes unresponsive. This means that requests to the primary Linode's IP address can be automatically rerouted to secondary Linodes at the configured shared IP addresses.  IP failover requires configuration of a failover service (such as [Keepalived](https://www.linode.com/docs/guides/ip-failover-keepalived)) within the internal system of the primary Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking ip-share \\   --linode_id 123 \\   --ips 192.0.2.1 \\   --ips 192.0.2.2     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_write linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_share_ips_request = LinodeOpenapiClient::PostShareIpsRequest.new({ips: ["192.0.2.1", "2001: db8: 3c4d: 15: : "], linode_id: 123}) # PostShareIpsRequest | Information about what IPs to share with which Linode.

begin
  # Configure IPv4 sharing
  result = api_instance.post_share_ipv4s(api_version, post_share_ips_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_share_ipv4s: #{e}"
end
```

#### Using the post_share_ipv4s_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_share_ipv4s_with_http_info(api_version, post_share_ips_request)

```ruby
begin
  # Configure IPv4 sharing
  data, status_code, headers = api_instance.post_share_ipv4s_with_http_info(api_version, post_share_ips_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->post_share_ipv4s_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_share_ips_request** | [**PostShareIpsRequest**](PostShareIpsRequest.md) | Information about what IPs to share with which Linode. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_firewall

> <PutFirewall200Response> put_firewall(api_version, firewall_id, opts)

Update a firewall

Updates information for a Firewall.  - Assigned Linodes must not have any ongoing live migrations.  - If a Firewall's status is changed with this operation, a corresponding `firewall_enable` or `firewall_disable` Event will be generated.  Some parts of a Firewall's configuration cannot be manipulated by this operation:  - A Firewall's Devices cannot be set with this operation. Instead, run the [Create a firewall device](https://techdocs.akamai.com/linode-api/reference/post-firewall-device) and [Delete a firewall device](https://techdocs.akamai.com/linode-api/reference/delete-firewall-device) operations to assign and remove this Firewall from services.  - A Firewall's Rules cannot be changed with this operation. Instead, run the [Update firewall rules](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) operation to update your Rules.  - A Firewall's status can be set to `enabled` or `disabled` by this operation, but it cannot be set to `deleted`. Instead, run the [Delete a firewall](https://techdocs.akamai.com/linode-api/reference/delete-firewall) operation to delete a Firewall.   <<LB>>  ---   - __CLI__.      ```     linode-cli firewalls update 123 \\   --status disabled     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     firewall:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
firewall_id = 56 # Integer | ID of the Firewall to access.
opts = {
  put_firewall_request: LinodeOpenapiClient::PutFirewallRequest.new # PutFirewallRequest | The Firewall information to update.
}

begin
  # Update a firewall
  result = api_instance.put_firewall(api_version, firewall_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->put_firewall: #{e}"
end
```

#### Using the put_firewall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutFirewall200Response>, Integer, Hash)> put_firewall_with_http_info(api_version, firewall_id, opts)

```ruby
begin
  # Update a firewall
  data, status_code, headers = api_instance.put_firewall_with_http_info(api_version, firewall_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutFirewall200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->put_firewall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **firewall_id** | **Integer** | ID of the Firewall to access. |  |
| **put_firewall_request** | [**PutFirewallRequest**](PutFirewallRequest.md) | The Firewall information to update. | [optional] |

### Return type

[**PutFirewall200Response**](PutFirewall200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_firewall_rules

> <PutFirewallRules200Response> put_firewall_rules(api_version, firewall_id, opts)

Update firewall rules

Updates the inbound and outbound Rules for a Firewall.  - Assigned Linodes must not have any ongoing live migrations.  - __Note__. This operation replaces all of a Firewall's `inbound` and `outbound` rulesets with the values specified in your request.   <<LB>>  ---   - __CLI__.      ```     linode-cli firewalls rules-update 123 \\   --inbound '[{\"action\":\"ACCEPT\", \"protocol\": \"TCP\", \"ports\": \"22, 80, 8080, 443\", \"addresses\": {\"ipv4\": [\"192.0.2.0/24\", \"198.51.100.2/32\"], \"ipv6\": [\"2001:DB8::/128\"]}}]' \\   --outbound '[{\"action\":\"DROP\",\"protocol\": \"TCP\", \"ports\": \"49152-65535\", \"addresses\": {\"ipv4\": [\"192.0.2.0/24\", \"198.51.100.2/32\"], \"ipv6\": [\"2001:DB8::/128`\"]}}]'     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     firewall:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
firewall_id = 56 # Integer | ID of the Firewall to access.
opts = {
  put_firewall_rules_request: LinodeOpenapiClient::PutFirewallRulesRequest.new # PutFirewallRulesRequest | The Firewall Rules information to update.
}

begin
  # Update firewall rules
  result = api_instance.put_firewall_rules(api_version, firewall_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->put_firewall_rules: #{e}"
end
```

#### Using the put_firewall_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutFirewallRules200Response>, Integer, Hash)> put_firewall_rules_with_http_info(api_version, firewall_id, opts)

```ruby
begin
  # Update firewall rules
  data, status_code, headers = api_instance.put_firewall_rules_with_http_info(api_version, firewall_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutFirewallRules200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->put_firewall_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **firewall_id** | **Integer** | ID of the Firewall to access. |  |
| **put_firewall_rules_request** | [**PutFirewallRulesRequest**](PutFirewallRulesRequest.md) | The Firewall Rules information to update. | [optional] |

### Return type

[**PutFirewallRules200Response**](PutFirewallRules200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_ip

> <PutIp200Response> put_ip(api_version, address, put_ip_request)

Update an IP address's RDNS

Sets RDNS on an IP Address. Forward DNS must already be set up for reverse DNS to be applied. If you set the RDNS to `null` for public IPv4 addresses, it will be reset to the default _ip.linodeusercontent.com_ RDNS value.   <<LB>>  ---   - __CLI__.      ```     linode-cli networking ip-update \\   203.0.113.1 \\   --rdns \"test.example.org\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     ips:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::NetworkingApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
address = 'address_example' # String | The address to operate on.
put_ip_request = LinodeOpenapiClient::PutIpRequest.new({rdns: 'test.example.org'}) # PutIpRequest | The information to update.

begin
  # Update an IP address's RDNS
  result = api_instance.put_ip(api_version, address, put_ip_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->put_ip: #{e}"
end
```

#### Using the put_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutIp200Response>, Integer, Hash)> put_ip_with_http_info(api_version, address, put_ip_request)

```ruby
begin
  # Update an IP address's RDNS
  data, status_code, headers = api_instance.put_ip_with_http_info(api_version, address, put_ip_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutIp200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling NetworkingApi->put_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **address** | **String** | The address to operate on. |  |
| **put_ip_request** | [**PutIpRequest**](PutIpRequest.md) | The information to update. |  |

### Return type

[**PutIp200Response**](PutIp200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

