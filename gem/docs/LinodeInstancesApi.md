# LinodeOpenapiClient::LinodeInstancesApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_disk**](LinodeInstancesApi.md#delete_disk) | **DELETE** /{apiVersion}/linode/instances/{linodeId}/disks/{diskId} | Delete a disk |
| [**delete_linode_config**](LinodeInstancesApi.md#delete_linode_config) | **DELETE** /{apiVersion}/linode/instances/{linodeId}/configs/{configId} | Delete a config profile |
| [**delete_linode_config_interface**](LinodeInstancesApi.md#delete_linode_config_interface) | **DELETE** /{apiVersion}/linode/instances/{linodeId}/configs/{configId}/interfaces/{interfaceId} | Delete a configuration profile interface |
| [**delete_linode_instance**](LinodeInstancesApi.md#delete_linode_instance) | **DELETE** /{apiVersion}/linode/instances/{linodeId} | Delete a Linode |
| [**delete_linode_ip**](LinodeInstancesApi.md#delete_linode_ip) | **DELETE** /{apiVersion}/linode/instances/{linodeId}/ips/{address} | Delete an IPv4 address |
| [**get_backup**](LinodeInstancesApi.md#get_backup) | **GET** /{apiVersion}/linode/instances/{linodeId}/backups/{backupId} | Get a backup |
| [**get_backups**](LinodeInstancesApi.md#get_backups) | **GET** /{apiVersion}/linode/instances/{linodeId}/backups | List backups |
| [**get_kernel**](LinodeInstancesApi.md#get_kernel) | **GET** /{apiVersion}/linode/kernels/{kernelId} | Get a kernel |
| [**get_kernels**](LinodeInstancesApi.md#get_kernels) | **GET** /{apiVersion}/linode/kernels | List kernels |
| [**get_linode_config**](LinodeInstancesApi.md#get_linode_config) | **GET** /{apiVersion}/linode/instances/{linodeId}/configs/{configId} | Get a config profile |
| [**get_linode_config_interface**](LinodeInstancesApi.md#get_linode_config_interface) | **GET** /{apiVersion}/linode/instances/{linodeId}/configs/{configId}/interfaces/{interfaceId} | Get a configuration profile interface |
| [**get_linode_config_interfaces**](LinodeInstancesApi.md#get_linode_config_interfaces) | **GET** /{apiVersion}/linode/instances/{linodeId}/configs/{configId}/interfaces | List configuration profile interfaces |
| [**get_linode_configs**](LinodeInstancesApi.md#get_linode_configs) | **GET** /{apiVersion}/linode/instances/{linodeId}/configs | List config profiles |
| [**get_linode_disk**](LinodeInstancesApi.md#get_linode_disk) | **GET** /{apiVersion}/linode/instances/{linodeId}/disks/{diskId} | Get a disk |
| [**get_linode_disks**](LinodeInstancesApi.md#get_linode_disks) | **GET** /{apiVersion}/linode/instances/{linodeId}/disks | List disks |
| [**get_linode_firewalls**](LinodeInstancesApi.md#get_linode_firewalls) | **GET** /{apiVersion}/linode/instances/{linodeId}/firewalls | List a Linode&#39;s firewalls |
| [**get_linode_instance**](LinodeInstancesApi.md#get_linode_instance) | **GET** /{apiVersion}/linode/instances/{linodeId} | Get a Linode |
| [**get_linode_instances**](LinodeInstancesApi.md#get_linode_instances) | **GET** /{apiVersion}/linode/instances | List Linodes |
| [**get_linode_ip**](LinodeInstancesApi.md#get_linode_ip) | **GET** /{apiVersion}/linode/instances/{linodeId}/ips/{address} | Get a Linode&#39;s IP address |
| [**get_linode_ips**](LinodeInstancesApi.md#get_linode_ips) | **GET** /{apiVersion}/linode/instances/{linodeId}/ips | Get networking information |
| [**get_linode_node_balancers**](LinodeInstancesApi.md#get_linode_node_balancers) | **GET** /{apiVersion}/linode/instances/{linodeId}/nodebalancers | List Linode NodeBalancers |
| [**get_linode_stats**](LinodeInstancesApi.md#get_linode_stats) | **GET** /{apiVersion}/linode/instances/{linodeId}/stats | Get Linode statistics |
| [**get_linode_stats_by_year_month**](LinodeInstancesApi.md#get_linode_stats_by_year_month) | **GET** /{apiVersion}/linode/instances/{linodeId}/stats/{year}/{month} | Get monthly statistics |
| [**get_linode_transfer**](LinodeInstancesApi.md#get_linode_transfer) | **GET** /{apiVersion}/linode/instances/{linodeId}/transfer | Get a network transfer |
| [**get_linode_transfer_by_year_month**](LinodeInstancesApi.md#get_linode_transfer_by_year_month) | **GET** /{apiVersion}/linode/instances/{linodeId}/transfer/{year}/{month} | Get monthly network transfer stats |
| [**get_linode_type**](LinodeInstancesApi.md#get_linode_type) | **GET** /{apiVersion}/linode/types/{typeId} | Get a type |
| [**get_linode_types**](LinodeInstancesApi.md#get_linode_types) | **GET** /{apiVersion}/linode/types | List types |
| [**get_linode_volumes**](LinodeInstancesApi.md#get_linode_volumes) | **GET** /{apiVersion}/linode/instances/{linodeId}/volumes | List a Linode&#39;s volumes |
| [**post_add_linode_config**](LinodeInstancesApi.md#post_add_linode_config) | **POST** /{apiVersion}/linode/instances/{linodeId}/configs | Create a config profile |
| [**post_add_linode_disk**](LinodeInstancesApi.md#post_add_linode_disk) | **POST** /{apiVersion}/linode/instances/{linodeId}/disks | Create a disk |
| [**post_add_linode_ip**](LinodeInstancesApi.md#post_add_linode_ip) | **POST** /{apiVersion}/linode/instances/{linodeId}/ips | Allocate an IPv4 address |
| [**post_boot_linode_instance**](LinodeInstancesApi.md#post_boot_linode_instance) | **POST** /{apiVersion}/linode/instances/{linodeId}/boot | Boot a Linode |
| [**post_cancel_backups**](LinodeInstancesApi.md#post_cancel_backups) | **POST** /{apiVersion}/linode/instances/{linodeId}/backups/cancel | Cancel backups |
| [**post_clone_linode_disk**](LinodeInstancesApi.md#post_clone_linode_disk) | **POST** /{apiVersion}/linode/instances/{linodeId}/disks/{diskId}/clone | Clone a disk |
| [**post_clone_linode_instance**](LinodeInstancesApi.md#post_clone_linode_instance) | **POST** /{apiVersion}/linode/instances/{linodeId}/clone | Clone a Linode |
| [**post_enable_backups**](LinodeInstancesApi.md#post_enable_backups) | **POST** /{apiVersion}/linode/instances/{linodeId}/backups/enable | Enable backups |
| [**post_linode_config_interface**](LinodeInstancesApi.md#post_linode_config_interface) | **POST** /{apiVersion}/linode/instances/{linodeId}/configs/{configId}/interfaces | Add a configuration profile interface |
| [**post_linode_config_interfaces**](LinodeInstancesApi.md#post_linode_config_interfaces) | **POST** /{apiVersion}/linode/instances/{linodeId}/configs/{configId}/interfaces/order | Reorder configuration profile interfaces |
| [**post_linode_instance**](LinodeInstancesApi.md#post_linode_instance) | **POST** /{apiVersion}/linode/instances | Create a Linode |
| [**post_migrate_linode_instance**](LinodeInstancesApi.md#post_migrate_linode_instance) | **POST** /{apiVersion}/linode/instances/{linodeId}/migrate | Initiate a DC migration/pending host migration |
| [**post_mutate_linode_instance**](LinodeInstancesApi.md#post_mutate_linode_instance) | **POST** /{apiVersion}/linode/instances/{linodeId}/mutate | Upgrade a Linode |
| [**post_reboot_linode_instance**](LinodeInstancesApi.md#post_reboot_linode_instance) | **POST** /{apiVersion}/linode/instances/{linodeId}/reboot | Reboot a Linode |
| [**post_rebuild_linode_instance**](LinodeInstancesApi.md#post_rebuild_linode_instance) | **POST** /{apiVersion}/linode/instances/{linodeId}/rebuild | Rebuild a Linode |
| [**post_rescue_linode_instance**](LinodeInstancesApi.md#post_rescue_linode_instance) | **POST** /{apiVersion}/linode/instances/{linodeId}/rescue | Boot a Linode into rescue mode |
| [**post_reset_disk_password**](LinodeInstancesApi.md#post_reset_disk_password) | **POST** /{apiVersion}/linode/instances/{linodeId}/disks/{diskId}/password | Reset a disk root password |
| [**post_reset_linode_password**](LinodeInstancesApi.md#post_reset_linode_password) | **POST** /{apiVersion}/linode/instances/{linodeId}/password | Reset a Linode&#39;s root password |
| [**post_resize_disk**](LinodeInstancesApi.md#post_resize_disk) | **POST** /{apiVersion}/linode/instances/{linodeId}/disks/{diskId}/resize | Resize a disk |
| [**post_resize_linode_instance**](LinodeInstancesApi.md#post_resize_linode_instance) | **POST** /{apiVersion}/linode/instances/{linodeId}/resize | Resize a Linode |
| [**post_restore_backup**](LinodeInstancesApi.md#post_restore_backup) | **POST** /{apiVersion}/linode/instances/{linodeId}/backups/{backupId}/restore | Restore a backup |
| [**post_shutdown_linode_instance**](LinodeInstancesApi.md#post_shutdown_linode_instance) | **POST** /{apiVersion}/linode/instances/{linodeId}/shutdown | Shut down a Linode |
| [**post_snapshot**](LinodeInstancesApi.md#post_snapshot) | **POST** /{apiVersion}/linode/instances/{linodeId}/backups | Create a snapshot |
| [**put_disk**](LinodeInstancesApi.md#put_disk) | **PUT** /{apiVersion}/linode/instances/{linodeId}/disks/{diskId} | Update a disk |
| [**put_linode_config**](LinodeInstancesApi.md#put_linode_config) | **PUT** /{apiVersion}/linode/instances/{linodeId}/configs/{configId} | Update a config profile |
| [**put_linode_config_interface**](LinodeInstancesApi.md#put_linode_config_interface) | **PUT** /{apiVersion}/linode/instances/{linodeId}/configs/{configId}/interfaces/{interfaceId} | Update a configuration profile interface |
| [**put_linode_instance**](LinodeInstancesApi.md#put_linode_instance) | **PUT** /{apiVersion}/linode/instances/{linodeId} | Update a Linode |
| [**put_linode_ip**](LinodeInstancesApi.md#put_linode_ip) | **PUT** /{apiVersion}/linode/instances/{linodeId}/ips/{address} | Update an IP address&#39;s RDNS for a Linode |


## delete_disk

> Object delete_disk(api_version, linode_id, disk_id)

Delete a disk

Deletes a Disk you have permission to `read_write`.  __Deleting a Disk is a destructive action and cannot be undone.__   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes disk-delete 123 24674     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
disk_id = 56 # Integer | ID of the Disk to look up.

begin
  # Delete a disk
  result = api_instance.delete_disk(api_version, linode_id, disk_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->delete_disk: #{e}"
end
```

#### Using the delete_disk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_disk_with_http_info(api_version, linode_id, disk_id)

```ruby
begin
  # Delete a disk
  data, status_code, headers = api_instance.delete_disk_with_http_info(api_version, linode_id, disk_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->delete_disk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **disk_id** | **Integer** | ID of the Disk to look up. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_linode_config

> Object delete_linode_config(api_version, linode_id, config_id)

Delete a config profile

Deletes the specified Configuration profile from the specified Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes config-delete 123 23456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The `id` of the Linode.
config_id = 56 # Integer | The `id` of the Configuration Profile.

begin
  # Delete a config profile
  result = api_instance.delete_linode_config(api_version, linode_id, config_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->delete_linode_config: #{e}"
end
```

#### Using the delete_linode_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_linode_config_with_http_info(api_version, linode_id, config_id)

```ruby
begin
  # Delete a config profile
  data, status_code, headers = api_instance.delete_linode_config_with_http_info(api_version, linode_id, config_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->delete_linode_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The &#x60;id&#x60; of the Linode. |  |
| **config_id** | **Integer** | The &#x60;id&#x60; of the Configuration Profile. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_linode_config_interface

> Object delete_linode_config_interface(api_version, linode_id, config_id, interface_id)

Delete a configuration profile interface

Deletes an Interface from the Configuration Profile.  - The User accessing this operation must have `read_write` grants to the Linode. - A successful request triggers a `linode_config_update` event. - Active Interfaces cannot be deleted. The associated Linode must first be shut down (or restarted using another Configuration Profile) before such Interfaces can be deleted from a Configuration Profile.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes config-delete $linodeId $configId $interfaceId     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The `id` of the Linode.
config_id = 56 # Integer | The `id` of the Configuration Profile.
interface_id = 56 # Integer | The `id` of the Linode Configuration Profile Interface.

begin
  # Delete a configuration profile interface
  result = api_instance.delete_linode_config_interface(api_version, linode_id, config_id, interface_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->delete_linode_config_interface: #{e}"
end
```

#### Using the delete_linode_config_interface_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_linode_config_interface_with_http_info(api_version, linode_id, config_id, interface_id)

```ruby
begin
  # Delete a configuration profile interface
  data, status_code, headers = api_instance.delete_linode_config_interface_with_http_info(api_version, linode_id, config_id, interface_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->delete_linode_config_interface_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The &#x60;id&#x60; of the Linode. |  |
| **config_id** | **Integer** | The &#x60;id&#x60; of the Configuration Profile. |  |
| **interface_id** | **Integer** | The &#x60;id&#x60; of the Linode Configuration Profile Interface. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_linode_instance

> Object delete_linode_instance(api_version, linode_id)

Delete a Linode

Deletes a Linode you have permission to `read_write`.  __Deleting a Linode is a destructive action and cannot be undone.__  Additionally, deleting a Linode:    - Gives up any IP addresses the Linode was assigned.   - Deletes all Disks, Backups, Configs, etc.   - Detaches any Volumes associated with the Linode.   - Stops billing for the Linode and its associated services. You will be billed for time used within the billing period the Linode was active.  Linodes that are in the process of [cloning](https://techdocs.akamai.com/linode-api/reference/post-clone-linode-instance) or [backup restoration](https://techdocs.akamai.com/linode-api/reference/post-restore-backup) cannot be deleted.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes delete 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.

begin
  # Delete a Linode
  result = api_instance.delete_linode_instance(api_version, linode_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->delete_linode_instance: #{e}"
end
```

#### Using the delete_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_linode_instance_with_http_info(api_version, linode_id)

```ruby
begin
  # Delete a Linode
  data, status_code, headers = api_instance.delete_linode_instance_with_http_info(api_version, linode_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->delete_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_linode_ip

> Object delete_linode_ip(api_version, linode_id, address)

Delete an IPv4 address

Deletes a public or private IPv4 address associated with this Linode. This will fail if it is the Linode's last remaining public IPv4 address, or if the address has a 1:1 NAT with an active VPC Subnet address.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes ip-delete 97.107.143.141     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The ID of the Linode.
address = 'address_example' # String | The IP address.

begin
  # Delete an IPv4 address
  result = api_instance.delete_linode_ip(api_version, linode_id, address)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->delete_linode_ip: #{e}"
end
```

#### Using the delete_linode_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_linode_ip_with_http_info(api_version, linode_id, address)

```ruby
begin
  # Delete an IPv4 address
  data, status_code, headers = api_instance.delete_linode_ip_with_http_info(api_version, linode_id, address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->delete_linode_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The ID of the Linode. |  |
| **address** | **String** | The IP address. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backup

> <GetBackup200Response> get_backup(api_version, linode_id, backup_id)

Get a backup

Returns information about a Backup.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes backup-view 123 123456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The ID of the Linode the Backup belongs to.
backup_id = 56 # Integer | The ID of the Backup to look up.

begin
  # Get a backup
  result = api_instance.get_backup(api_version, linode_id, backup_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_backup: #{e}"
end
```

#### Using the get_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBackup200Response>, Integer, Hash)> get_backup_with_http_info(api_version, linode_id, backup_id)

```ruby
begin
  # Get a backup
  data, status_code, headers = api_instance.get_backup_with_http_info(api_version, linode_id, backup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBackup200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The ID of the Linode the Backup belongs to. |  |
| **backup_id** | **Integer** | The ID of the Backup to look up. |  |

### Return type

[**GetBackup200Response**](GetBackup200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backups

> <GetBackups200Response> get_backups(api_version, linode_id)

List backups

Returns information about this Linode's available backups.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes backups-list 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The ID of the Linode the backups belong to.

begin
  # List backups
  result = api_instance.get_backups(api_version, linode_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_backups: #{e}"
end
```

#### Using the get_backups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBackups200Response>, Integer, Hash)> get_backups_with_http_info(api_version, linode_id)

```ruby
begin
  # List backups
  data, status_code, headers = api_instance.get_backups_with_http_info(api_version, linode_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBackups200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_backups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The ID of the Linode the backups belong to. |  |

### Return type

[**GetBackups200Response**](GetBackups200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_kernel

> <GetKernel200Response> get_kernel(api_version, kernel_id)

Get a kernel

Returns information about a single Kernel.   <<LB>>  ---   - __CLI__.      ```     linode-cli kernels view latest-64bit     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
kernel_id = 'kernel_id_example' # String | ID of the Kernel to look up.

begin
  # Get a kernel
  result = api_instance.get_kernel(api_version, kernel_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_kernel: #{e}"
end
```

#### Using the get_kernel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetKernel200Response>, Integer, Hash)> get_kernel_with_http_info(api_version, kernel_id)

```ruby
begin
  # Get a kernel
  data, status_code, headers = api_instance.get_kernel_with_http_info(api_version, kernel_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetKernel200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_kernel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **kernel_id** | **String** | ID of the Kernel to look up. |  |

### Return type

[**GetKernel200Response**](GetKernel200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_kernels

> <GetKernels200Response> get_kernels(api_version, opts)

List kernels

Lists available Kernels.  Due to the extensive list of available kernels, please keep [pagination](https://techdocs.akamai.com/linode-api/reference/pagination) controls in mind when managing responses to this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli kernels list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List kernels
  result = api_instance.get_kernels(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_kernels: #{e}"
end
```

#### Using the get_kernels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetKernels200Response>, Integer, Hash)> get_kernels_with_http_info(api_version, opts)

```ruby
begin
  # List kernels
  data, status_code, headers = api_instance.get_kernels_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetKernels200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_kernels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetKernels200Response**](GetKernels200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_config

> <GetLinodeConfig200Response> get_linode_config(api_version, linode_id, config_id)

Get a config profile

Returns information about a specific Configuration profile.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes config-view 123 23456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The `id` of the Linode.
config_id = 56 # Integer | The `id` of the Configuration Profile.

begin
  # Get a config profile
  result = api_instance.get_linode_config(api_version, linode_id, config_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_config: #{e}"
end
```

#### Using the get_linode_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeConfig200Response>, Integer, Hash)> get_linode_config_with_http_info(api_version, linode_id, config_id)

```ruby
begin
  # Get a config profile
  data, status_code, headers = api_instance.get_linode_config_with_http_info(api_version, linode_id, config_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeConfig200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The &#x60;id&#x60; of the Linode. |  |
| **config_id** | **Integer** | The &#x60;id&#x60; of the Configuration Profile. |  |

### Return type

[**GetLinodeConfig200Response**](GetLinodeConfig200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_config_interface

> <GetLinodeConfigInterface200Response> get_linode_config_interface(api_version, linode_id, config_id, interface_id)

Get a configuration profile interface

Returns a single Configuration Profile Interface.  - The User accessing this operation must have at least `read_only` grants to the Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes config-interface-view $linodeId $configId $interfaceId     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The `id` of the Linode.
config_id = 56 # Integer | The `id` of the Configuration Profile.
interface_id = 56 # Integer | The `id` of the Linode Configuration Profile Interface.

begin
  # Get a configuration profile interface
  result = api_instance.get_linode_config_interface(api_version, linode_id, config_id, interface_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_config_interface: #{e}"
end
```

#### Using the get_linode_config_interface_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeConfigInterface200Response>, Integer, Hash)> get_linode_config_interface_with_http_info(api_version, linode_id, config_id, interface_id)

```ruby
begin
  # Get a configuration profile interface
  data, status_code, headers = api_instance.get_linode_config_interface_with_http_info(api_version, linode_id, config_id, interface_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeConfigInterface200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_config_interface_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The &#x60;id&#x60; of the Linode. |  |
| **config_id** | **Integer** | The &#x60;id&#x60; of the Configuration Profile. |  |
| **interface_id** | **Integer** | The &#x60;id&#x60; of the Linode Configuration Profile Interface. |  |

### Return type

[**GetLinodeConfigInterface200Response**](GetLinodeConfigInterface200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_config_interfaces

> <Array<GetLinodeConfigInterfaces200ResponseInner>> get_linode_config_interfaces(api_version, linode_id, config_id)

List configuration profile interfaces

Returns an ordered array of all Interfaces associated with this Configuration Profile.  - The User accessing this operation must have at least `read_only` grants to the Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes config-interfaces-list $linodeId $configId     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The `id` of the Linode.
config_id = 56 # Integer | The `id` of the Configuration Profile.

begin
  # List configuration profile interfaces
  result = api_instance.get_linode_config_interfaces(api_version, linode_id, config_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_config_interfaces: #{e}"
end
```

#### Using the get_linode_config_interfaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetLinodeConfigInterfaces200ResponseInner>>, Integer, Hash)> get_linode_config_interfaces_with_http_info(api_version, linode_id, config_id)

```ruby
begin
  # List configuration profile interfaces
  data, status_code, headers = api_instance.get_linode_config_interfaces_with_http_info(api_version, linode_id, config_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetLinodeConfigInterfaces200ResponseInner>>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_config_interfaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The &#x60;id&#x60; of the Linode. |  |
| **config_id** | **Integer** | The &#x60;id&#x60; of the Configuration Profile. |  |

### Return type

[**Array&lt;GetLinodeConfigInterfaces200ResponseInner&gt;**](GetLinodeConfigInterfaces200ResponseInner.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_configs

> <GetLinodeConfigs200Response> get_linode_configs(api_version, linode_id, opts)

List config profiles

Lists Configuration profiles associated with a Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes configs-list 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up Configuration profiles for.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List config profiles
  result = api_instance.get_linode_configs(api_version, linode_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_configs: #{e}"
end
```

#### Using the get_linode_configs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeConfigs200Response>, Integer, Hash)> get_linode_configs_with_http_info(api_version, linode_id, opts)

```ruby
begin
  # List config profiles
  data, status_code, headers = api_instance.get_linode_configs_with_http_info(api_version, linode_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeConfigs200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_configs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up Configuration profiles for. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetLinodeConfigs200Response**](GetLinodeConfigs200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_disk

> <GetLinodeDisk200Response> get_linode_disk(api_version, linode_id, disk_id)

Get a disk

View Disk information for a Disk associated with this Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes disk-view 123 25674     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
disk_id = 56 # Integer | ID of the Disk to look up.

begin
  # Get a disk
  result = api_instance.get_linode_disk(api_version, linode_id, disk_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_disk: #{e}"
end
```

#### Using the get_linode_disk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeDisk200Response>, Integer, Hash)> get_linode_disk_with_http_info(api_version, linode_id, disk_id)

```ruby
begin
  # Get a disk
  data, status_code, headers = api_instance.get_linode_disk_with_http_info(api_version, linode_id, disk_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeDisk200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_disk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **disk_id** | **Integer** | ID of the Disk to look up. |  |

### Return type

[**GetLinodeDisk200Response**](GetLinodeDisk200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_disks

> <GetLinodeDisks200Response> get_linode_disks(api_version, linode_id, opts)

List disks

View Disk information for Disks associated with this Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes disks-list 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List disks
  result = api_instance.get_linode_disks(api_version, linode_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_disks: #{e}"
end
```

#### Using the get_linode_disks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeDisks200Response>, Integer, Hash)> get_linode_disks_with_http_info(api_version, linode_id, opts)

```ruby
begin
  # List disks
  data, status_code, headers = api_instance.get_linode_disks_with_http_info(api_version, linode_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeDisks200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_disks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetLinodeDisks200Response**](GetLinodeDisks200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_firewalls

> <GetLinodeFirewalls200Response> get_linode_firewalls(api_version, linode_id, opts)

List a Linode's firewalls

View Firewall information for Firewalls assigned to this Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes firewalls-list 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to access.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List a Linode's firewalls
  result = api_instance.get_linode_firewalls(api_version, linode_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_firewalls: #{e}"
end
```

#### Using the get_linode_firewalls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeFirewalls200Response>, Integer, Hash)> get_linode_firewalls_with_http_info(api_version, linode_id, opts)

```ruby
begin
  # List a Linode's firewalls
  data, status_code, headers = api_instance.get_linode_firewalls_with_http_info(api_version, linode_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeFirewalls200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_firewalls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to access. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetLinodeFirewalls200Response**](GetLinodeFirewalls200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_instance

> <Linode4> get_linode_instance(api_version, linode_id)

Get a Linode

Get a specific Linode by ID.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.

begin
  # Get a Linode
  result = api_instance.get_linode_instance(api_version, linode_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_instance: #{e}"
end
```

#### Using the get_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Linode4>, Integer, Hash)> get_linode_instance_with_http_info(api_version, linode_id)

```ruby
begin
  # Get a Linode
  data, status_code, headers = api_instance.get_linode_instance_with_http_info(api_version, linode_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Linode4>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |

### Return type

[**Linode4**](Linode4.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_instances

> <GetLinodeInstances200Response> get_linode_instances(api_version, opts)

List Linodes

Returns a paginated list of Linodes you have permission to view.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  x_filter: LinodeOpenapiClient::FilterAndSortCriteria.new, # GetLinodeInstancesXFilterParameter | Specifies a JSON object to filter down the results. See [Filtering and sorting](filtering-and-sorting) for details.
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List Linodes
  result = api_instance.get_linode_instances(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_instances: #{e}"
end
```

#### Using the get_linode_instances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeInstances200Response>, Integer, Hash)> get_linode_instances_with_http_info(api_version, opts)

```ruby
begin
  # List Linodes
  data, status_code, headers = api_instance.get_linode_instances_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeInstances200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **x_filter** | [**GetLinodeInstancesXFilterParameter**](.md) | Specifies a JSON object to filter down the results. See [Filtering and sorting](filtering-and-sorting) for details. | [optional] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetLinodeInstances200Response**](GetLinodeInstances200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_ip

> <GetLinodeIp200Response> get_linode_ip(api_version, linode_id, address)

Get a Linode's IP address

View information about the specified IP address associated with the specified Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes ip-view 123 97.107.143.141     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The ID of the Linode.
address = 'address_example' # String | The IP address.

begin
  # Get a Linode's IP address
  result = api_instance.get_linode_ip(api_version, linode_id, address)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_ip: #{e}"
end
```

#### Using the get_linode_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeIp200Response>, Integer, Hash)> get_linode_ip_with_http_info(api_version, linode_id, address)

```ruby
begin
  # Get a Linode's IP address
  data, status_code, headers = api_instance.get_linode_ip_with_http_info(api_version, linode_id, address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeIp200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The ID of the Linode. |  |
| **address** | **String** | The IP address. |  |

### Return type

[**GetLinodeIp200Response**](GetLinodeIp200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_ips

> <GetLinodeIps200Response> get_linode_ips(api_version, linode_id)

Get networking information

Returns networking information for a single Linode.  __Note__. If the target Linode has several configuration profiles that include a Virtual Private Cloud (VPC) interface, address information for all of VPCs will be listed in the response.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes ips-list 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.

begin
  # Get networking information
  result = api_instance.get_linode_ips(api_version, linode_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_ips: #{e}"
end
```

#### Using the get_linode_ips_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeIps200Response>, Integer, Hash)> get_linode_ips_with_http_info(api_version, linode_id)

```ruby
begin
  # Get networking information
  data, status_code, headers = api_instance.get_linode_ips_with_http_info(api_version, linode_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeIps200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_ips_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |

### Return type

[**GetLinodeIps200Response**](GetLinodeIps200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_node_balancers

> <GetLinodeNodeBalancers200Response> get_linode_node_balancers(api_version, linode_id)

List Linode NodeBalancers

Returns a list of NodeBalancers that are assigned to this Linode and readable by the requesting User.  Read permission to a NodeBalancer can be given to a User by accessing the [Update a user's grants](https://techdocs.akamai.com/linode-api/reference/put-user-grants) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes nodebalancers 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.

begin
  # List Linode NodeBalancers
  result = api_instance.get_linode_node_balancers(api_version, linode_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_node_balancers: #{e}"
end
```

#### Using the get_linode_node_balancers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeNodeBalancers200Response>, Integer, Hash)> get_linode_node_balancers_with_http_info(api_version, linode_id)

```ruby
begin
  # List Linode NodeBalancers
  data, status_code, headers = api_instance.get_linode_node_balancers_with_http_info(api_version, linode_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeNodeBalancers200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_node_balancers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |

### Return type

[**GetLinodeNodeBalancers200Response**](GetLinodeNodeBalancers200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_stats

> <GetLinodeStats200Response> get_linode_stats(api_version, linode_id)

Get Linode statistics

Returns CPU, IO, IPv4, and IPv6 statistics for your Linode for the past 24 hours.   <<LB>>  ---   - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.

begin
  # Get Linode statistics
  result = api_instance.get_linode_stats(api_version, linode_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_stats: #{e}"
end
```

#### Using the get_linode_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeStats200Response>, Integer, Hash)> get_linode_stats_with_http_info(api_version, linode_id)

```ruby
begin
  # Get Linode statistics
  data, status_code, headers = api_instance.get_linode_stats_with_http_info(api_version, linode_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeStats200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |

### Return type

[**GetLinodeStats200Response**](GetLinodeStats200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_stats_by_year_month

> <GetLinodeStatsByYearMonth200Response> get_linode_stats_by_year_month(api_version, linode_id, year, month)

Get monthly statistics

Returns statistics for a specific month. The year/month values must be either a date in the past, or the current month. If the current month, statistics will be retrieved for the past 30 days.   <<LB>>  ---   - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
year = 56 # Integer | Numeric value representing the year to look up.
month = 56 # Integer | Numeric value representing the month to look up.

begin
  # Get monthly statistics
  result = api_instance.get_linode_stats_by_year_month(api_version, linode_id, year, month)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_stats_by_year_month: #{e}"
end
```

#### Using the get_linode_stats_by_year_month_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeStatsByYearMonth200Response>, Integer, Hash)> get_linode_stats_by_year_month_with_http_info(api_version, linode_id, year, month)

```ruby
begin
  # Get monthly statistics
  data, status_code, headers = api_instance.get_linode_stats_by_year_month_with_http_info(api_version, linode_id, year, month)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeStatsByYearMonth200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_stats_by_year_month_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **year** | **Integer** | Numeric value representing the year to look up. |  |
| **month** | **Integer** | Numeric value representing the month to look up. |  |

### Return type

[**GetLinodeStatsByYearMonth200Response**](GetLinodeStatsByYearMonth200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_transfer

> <GetLinodeTransfer200Response> get_linode_transfer(api_version, linode_id)

Get a network transfer

Returns a Linode's network transfer pool statistics for the current month.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes transfer-view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.

begin
  # Get a network transfer
  result = api_instance.get_linode_transfer(api_version, linode_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_transfer: #{e}"
end
```

#### Using the get_linode_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeTransfer200Response>, Integer, Hash)> get_linode_transfer_with_http_info(api_version, linode_id)

```ruby
begin
  # Get a network transfer
  data, status_code, headers = api_instance.get_linode_transfer_with_http_info(api_version, linode_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeTransfer200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |

### Return type

[**GetLinodeTransfer200Response**](GetLinodeTransfer200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_transfer_by_year_month

> <GetLinodeTransferByYearMonth200Response> get_linode_transfer_by_year_month(api_version, linode_id, year, month)

Get monthly network transfer stats

Returns a Linode's network transfer statistics for a specific month. The year/month values must be either a date in the past, or the current month.   <<LB>>  ---   - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
year = 56 # Integer | Numeric value representing the year to look up.
month = 56 # Integer | Numeric value representing the month to look up.

begin
  # Get monthly network transfer stats
  result = api_instance.get_linode_transfer_by_year_month(api_version, linode_id, year, month)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_transfer_by_year_month: #{e}"
end
```

#### Using the get_linode_transfer_by_year_month_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeTransferByYearMonth200Response>, Integer, Hash)> get_linode_transfer_by_year_month_with_http_info(api_version, linode_id, year, month)

```ruby
begin
  # Get monthly network transfer stats
  data, status_code, headers = api_instance.get_linode_transfer_by_year_month_with_http_info(api_version, linode_id, year, month)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeTransferByYearMonth200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_transfer_by_year_month_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **year** | **Integer** | Numeric value representing the year to look up. |  |
| **month** | **Integer** | Numeric value representing the month to look up. |  |

### Return type

[**GetLinodeTransferByYearMonth200Response**](GetLinodeTransferByYearMonth200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_type

> <GetLinodeType200Response> get_linode_type(api_version, type_id)

Get a type

Returns information about a specific Linode Type, including pricing and specifications. This is used when [creating](https://techdocs.akamai.com/linode-api/reference/post-linode-instance) or [resizing](https://techdocs.akamai.com/linode-api/reference/post-resize-linode-instance) Linodes.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes type-view g6-standard-2     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
type_id = 'type_id_example' # String | The ID of the Linode Type to look up.

begin
  # Get a type
  result = api_instance.get_linode_type(api_version, type_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_type: #{e}"
end
```

#### Using the get_linode_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeType200Response>, Integer, Hash)> get_linode_type_with_http_info(api_version, type_id)

```ruby
begin
  # Get a type
  data, status_code, headers = api_instance.get_linode_type_with_http_info(api_version, type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeType200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **type_id** | **String** | The ID of the Linode Type to look up. |  |

### Return type

[**GetLinodeType200Response**](GetLinodeType200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_types

> <GetLinodeTypes200Response> get_linode_types(api_version)

List types

Returns collection of Linode Types, including pricing and specifications for each Type. These are used when [creating](https://techdocs.akamai.com/linode-api/reference/post-linode-instance) or [resizing](https://techdocs.akamai.com/linode-api/reference/post-resize-linode-instance) Linodes.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes types     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List types
  result = api_instance.get_linode_types(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_types: #{e}"
end
```

#### Using the get_linode_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeTypes200Response>, Integer, Hash)> get_linode_types_with_http_info(api_version)

```ruby
begin
  # List types
  data, status_code, headers = api_instance.get_linode_types_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeTypes200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetLinodeTypes200Response**](GetLinodeTypes200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linode_volumes

> <GetLinodeVolumes200Response> get_linode_volumes(api_version, linode_id, opts)

List a Linode's volumes

View Block Storage Volumes attached to this Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes volumes 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List a Linode's volumes
  result = api_instance.get_linode_volumes(api_version, linode_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_volumes: #{e}"
end
```

#### Using the get_linode_volumes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinodeVolumes200Response>, Integer, Hash)> get_linode_volumes_with_http_info(api_version, linode_id, opts)

```ruby
begin
  # List a Linode's volumes
  data, status_code, headers = api_instance.get_linode_volumes_with_http_info(api_version, linode_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinodeVolumes200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->get_linode_volumes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetLinodeVolumes200Response**](GetLinodeVolumes200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_add_linode_config

> <PostAddLinodeConfig200Response> post_add_linode_config(api_version, linode_id, post_add_linode_config_request)

Create a config profile

Adds a new Configuration profile to a Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes config-create 7590910 \\   --label \"My Config\" \\   --devices.sda.disk_id 123456 \\   --devices.sdb.disk_id 123457     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up Configuration profiles for.
post_add_linode_config_request = LinodeOpenapiClient::PostAddLinodeConfigRequest.new({label: 'My Config', devices: LinodeOpenapiClient::PostAddLinodeConfigRequestAllOfDevices.new}) # PostAddLinodeConfigRequest | The parameters to set when creating the Configuration profile. This determines which kernel, devices, how much memory, etc. a Linode boots with.

begin
  # Create a config profile
  result = api_instance.post_add_linode_config(api_version, linode_id, post_add_linode_config_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_add_linode_config: #{e}"
end
```

#### Using the post_add_linode_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAddLinodeConfig200Response>, Integer, Hash)> post_add_linode_config_with_http_info(api_version, linode_id, post_add_linode_config_request)

```ruby
begin
  # Create a config profile
  data, status_code, headers = api_instance.post_add_linode_config_with_http_info(api_version, linode_id, post_add_linode_config_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAddLinodeConfig200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_add_linode_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up Configuration profiles for. |  |
| **post_add_linode_config_request** | [**PostAddLinodeConfigRequest**](PostAddLinodeConfigRequest.md) | The parameters to set when creating the Configuration profile. This determines which kernel, devices, how much memory, etc. a Linode boots with. |  |

### Return type

[**PostAddLinodeConfig200Response**](PostAddLinodeConfig200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_add_linode_disk

> <PostAddLinodeDisk200Response> post_add_linode_disk(api_version, linode_id, post_add_linode_disk_request)

Create a disk

Adds a new Disk to a Linode.  - You can optionally create a Disk from an Image or an Empty Disk if no Image is provided with a request.  - When creating an Empty Disk, providing a `label` is required.  - If no `label` is provided, an `image` is required instead.  - When creating a Disk from an Image, `root_pass` is required.  - The default filesystem for new Disks is `ext4`. If creating a Disk from an Image, the filesystem of the Image is used unless otherwise specified.  - When deploying a StackScript on a Disk:    - Run [List StackScripts](https://techdocs.akamai.com/linode-api/reference/get-stack-scripts) for a list of available StackScripts.   - Requires a compatible Image to be supplied.     - Run [Get a StackScript](https://techdocs.akamai.com/linode-api/reference/get-stack-script) for compatible Images.   - It is recommended to supply SSH keys for the root User using the `authorized_keys` field.   - You may also supply a list of usernames via the `authorized_users` field.     - These users must have an SSH Key associated with their Profiles first. See [Add an SSH key](https://techdocs.akamai.com/linode-api/reference/post-add-ssh-key) for more information.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes disk-create 123 \\   --size 1300 \\   --authorized_keys \"ssh-rsa AAAA_valid_public_ssh_key_123456785== user@their-computer\" \\   --authorized_users \"myUser\" \\   --authorized_users \"secondaryUser\" \\   --root_pass aComplex@Password \\   --image \"linode/debian9\" \\   --stackscript_id 10079 \\   --stackscript_data '{\"gh_username\": \"linode\"}'     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
post_add_linode_disk_request = LinodeOpenapiClient::PostAddLinodeDiskRequest.new({size: 48640}) # PostAddLinodeDiskRequest | The parameters to set when creating the Disk.

begin
  # Create a disk
  result = api_instance.post_add_linode_disk(api_version, linode_id, post_add_linode_disk_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_add_linode_disk: #{e}"
end
```

#### Using the post_add_linode_disk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAddLinodeDisk200Response>, Integer, Hash)> post_add_linode_disk_with_http_info(api_version, linode_id, post_add_linode_disk_request)

```ruby
begin
  # Create a disk
  data, status_code, headers = api_instance.post_add_linode_disk_with_http_info(api_version, linode_id, post_add_linode_disk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAddLinodeDisk200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_add_linode_disk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **post_add_linode_disk_request** | [**PostAddLinodeDiskRequest**](PostAddLinodeDiskRequest.md) | The parameters to set when creating the Disk. |  |

### Return type

[**PostAddLinodeDisk200Response**](PostAddLinodeDisk200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_add_linode_ip

> <PostAddLinodeIp200Response> post_add_linode_ip(api_version, linode_id, post_add_linode_ip_request)

Allocate an IPv4 address

Allocates a public or private IPv4 address to a Linode. Public IP Addresses, after the one included with each Linode, incur an additional monthly charge. If you need an additional public IP Address you must request one - please [Open a support ticket](https://techdocs.akamai.com/linode-api/reference/post-ticket). You may not add more than one private IPv4 address to a single Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes ip-add 123 \\   --type ipv4 \\   --public true     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
post_add_linode_ip_request = LinodeOpenapiClient::PostAddLinodeIpRequest.new({type: 'ipv4', public: true}) # PostAddLinodeIpRequest | Information about the address you are creating.

begin
  # Allocate an IPv4 address
  result = api_instance.post_add_linode_ip(api_version, linode_id, post_add_linode_ip_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_add_linode_ip: #{e}"
end
```

#### Using the post_add_linode_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAddLinodeIp200Response>, Integer, Hash)> post_add_linode_ip_with_http_info(api_version, linode_id, post_add_linode_ip_request)

```ruby
begin
  # Allocate an IPv4 address
  data, status_code, headers = api_instance.post_add_linode_ip_with_http_info(api_version, linode_id, post_add_linode_ip_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAddLinodeIp200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_add_linode_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **post_add_linode_ip_request** | [**PostAddLinodeIpRequest**](PostAddLinodeIpRequest.md) | Information about the address you are creating. |  |

### Return type

[**PostAddLinodeIp200Response**](PostAddLinodeIp200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_boot_linode_instance

> Object post_boot_linode_instance(api_version, linode_id, opts)

Boot a Linode

Boots a Linode you have permission to modify. If no parameters are given, a Config profile will be chosen for this boot based on the following criteria:  - If there is only one Config profile for this Linode, it will be used. - If there is more than one Config profile, the last booted config will be used. - If there is more than one Config profile and none were the last to be booted (because the Linode was never booted or the last booted config was deleted) an error will be returned.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes boot 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The ID of the Linode to boot.
opts = {
  post_boot_linode_instance_request: LinodeOpenapiClient::PostBootLinodeInstanceRequest.new # PostBootLinodeInstanceRequest | Optional configuration to boot into (see above).
}

begin
  # Boot a Linode
  result = api_instance.post_boot_linode_instance(api_version, linode_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_boot_linode_instance: #{e}"
end
```

#### Using the post_boot_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_boot_linode_instance_with_http_info(api_version, linode_id, opts)

```ruby
begin
  # Boot a Linode
  data, status_code, headers = api_instance.post_boot_linode_instance_with_http_info(api_version, linode_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_boot_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The ID of the Linode to boot. |  |
| **post_boot_linode_instance_request** | [**PostBootLinodeInstanceRequest**](PostBootLinodeInstanceRequest.md) | Optional configuration to boot into (see above). | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_cancel_backups

> Object post_cancel_backups(api_version, linode_id)

Cancel backups

Cancels the Backup service on the given Linode. Deletes all of this Linode's existing backups forever.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes backups-cancel 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The ID of the Linode to cancel backup service for.

begin
  # Cancel backups
  result = api_instance.post_cancel_backups(api_version, linode_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_cancel_backups: #{e}"
end
```

#### Using the post_cancel_backups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_cancel_backups_with_http_info(api_version, linode_id)

```ruby
begin
  # Cancel backups
  data, status_code, headers = api_instance.post_cancel_backups_with_http_info(api_version, linode_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_cancel_backups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The ID of the Linode to cancel backup service for. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_clone_linode_disk

> <PostCloneLinodeDisk200Response> post_clone_linode_disk(api_version, linode_id, disk_id)

Clone a disk

Copies a disk, byte-for-byte, into a new Disk belonging to the same Linode. The Linode must have enough storage space available to accept a new Disk of the same size as this one or this operation will fail.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes disk-clone     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
disk_id = 56 # Integer | ID of the Disk to clone.

begin
  # Clone a disk
  result = api_instance.post_clone_linode_disk(api_version, linode_id, disk_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_clone_linode_disk: #{e}"
end
```

#### Using the post_clone_linode_disk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCloneLinodeDisk200Response>, Integer, Hash)> post_clone_linode_disk_with_http_info(api_version, linode_id, disk_id)

```ruby
begin
  # Clone a disk
  data, status_code, headers = api_instance.post_clone_linode_disk_with_http_info(api_version, linode_id, disk_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCloneLinodeDisk200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_clone_linode_disk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **disk_id** | **Integer** | ID of the Disk to clone. |  |

### Return type

[**PostCloneLinodeDisk200Response**](PostCloneLinodeDisk200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_clone_linode_instance

> <Linode2> post_clone_linode_instance(api_version, linode_id, post_clone_linode_instance_request)

Clone a Linode

You can clone your Linode's existing Disks or Configuration profiles to another Linode on your Account. In order for this request to complete successfully, your User must have the `add_linodes` grant. Cloning to a new Linode will incur a charge on your Account.  If cloning to an existing Linode, any actions currently running or queued must be completed first before you can clone to it.  Up to five clone operations from any given source Linode can be run concurrently. If more concurrent clones are attempted, an HTTP 400 error will be returned by this operation.  Any [tags](https://techdocs.akamai.com/linode-api/reference/get-tags) existing on the source Linode will be cloned to the target Linode.  Linodes utilizing Metadata (`\"has_user_data\": true`) must be cloned to a new Linode with `metadata.user_data` included with the clone request.  `vpc` details  - If the Linode you are cloning has a `vpc` purpose Interface on its active Configuration Profile that includes a 1:1 NAT, the resulting clone is configured with an `any` 1:1 NAT. - See the [VPC documentation](https://www.linode.com/docs/products/networking/vpc/#technical-specifications) guide for its specifications and limitations.  `vlan` details  - Only Next Generation Network (NGN) data centers support VLANs. If a VLAN is attached to your Linode and you attempt clone it to a non-NGN data center, the cloning will not initiate. If a Linode cannot be cloned because of an incompatibility, you will be prompted to select a different data center or contact support. - See the [VLANs Overview](https://www.linode.com/docs/products/networking/vlans/#technical-specifications) guide to view additional specifications and limitations.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes clone 123 \\   --linode_id 124 \\   --region us-east \\   --type g6-standard-2 \\   --label cloned-linode \\   --backups_enabled true \\   --placement_group.id 528 \\   --disks 25674 \\   --configs 23456 \\   --private_ip true \\   --metadata.user_data I2Nsb3VkLWNvbmZpZw==     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to clone.
post_clone_linode_instance_request = LinodeOpenapiClient::PostCloneLinodeInstanceRequest.new # PostCloneLinodeInstanceRequest | The requested state your Linode will be cloned into.

begin
  # Clone a Linode
  result = api_instance.post_clone_linode_instance(api_version, linode_id, post_clone_linode_instance_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_clone_linode_instance: #{e}"
end
```

#### Using the post_clone_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Linode2>, Integer, Hash)> post_clone_linode_instance_with_http_info(api_version, linode_id, post_clone_linode_instance_request)

```ruby
begin
  # Clone a Linode
  data, status_code, headers = api_instance.post_clone_linode_instance_with_http_info(api_version, linode_id, post_clone_linode_instance_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Linode2>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_clone_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to clone. |  |
| **post_clone_linode_instance_request** | [**PostCloneLinodeInstanceRequest**](PostCloneLinodeInstanceRequest.md) | The requested state your Linode will be cloned into. |  |

### Return type

[**Linode2**](Linode2.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_enable_backups

> Object post_enable_backups(api_version, linode_id)

Enable backups

Enables backups for the specified Linode.  __Note__. Backups are not encrypted even when they are taken from an encrypted disk. When a backup is restored, and if encryption is enabled, the data stored on the disk is encrypted again.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes backups-enable 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The ID of the Linode to enable backup service for.

begin
  # Enable backups
  result = api_instance.post_enable_backups(api_version, linode_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_enable_backups: #{e}"
end
```

#### Using the post_enable_backups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_enable_backups_with_http_info(api_version, linode_id)

```ruby
begin
  # Enable backups
  data, status_code, headers = api_instance.post_enable_backups_with_http_info(api_version, linode_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_enable_backups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The ID of the Linode to enable backup service for. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_linode_config_interface

> <PostLinodeConfigInterface200Response> post_linode_config_interface(api_version, linode_id, config_id, post_linode_config_interface_request)

Add a configuration profile interface

Creates and appends a single Interface to the end of the `interfaces` array for an existing Configuration Profile.  - The User accessing this operation must have `read_write` grants to the Linode. - A successful request triggers a `linode_config_update` event. - If the new Interface is added with `\"primary\": true`, then any existing primary Interface is changed to `\"primary\": false`.  Reboot the Linode with this Configuration Profile to activate an Interface that was added with this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes config-interface-add $linodeId $configId \\   --purpose vpc \\   --primary false \\   --subnet_id 101 \\   --ipv4.vpc \"10.0.1.2\" \\   --ipv4.nat_1_1 \"203.0.113.2\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The `id` of the Linode.
config_id = 56 # Integer | The `id` of the Configuration Profile.
post_linode_config_interface_request = LinodeOpenapiClient::PostLinodeConfigInterfaceRequest.new({purpose: 'public'}) # PostLinodeConfigInterfaceRequest | The Interface to add to the Configuration Profile.

begin
  # Add a configuration profile interface
  result = api_instance.post_linode_config_interface(api_version, linode_id, config_id, post_linode_config_interface_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_linode_config_interface: #{e}"
end
```

#### Using the post_linode_config_interface_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostLinodeConfigInterface200Response>, Integer, Hash)> post_linode_config_interface_with_http_info(api_version, linode_id, config_id, post_linode_config_interface_request)

```ruby
begin
  # Add a configuration profile interface
  data, status_code, headers = api_instance.post_linode_config_interface_with_http_info(api_version, linode_id, config_id, post_linode_config_interface_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostLinodeConfigInterface200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_linode_config_interface_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The &#x60;id&#x60; of the Linode. |  |
| **config_id** | **Integer** | The &#x60;id&#x60; of the Configuration Profile. |  |
| **post_linode_config_interface_request** | [**PostLinodeConfigInterfaceRequest**](PostLinodeConfigInterfaceRequest.md) | The Interface to add to the Configuration Profile. |  |

### Return type

[**PostLinodeConfigInterface200Response**](PostLinodeConfigInterface200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_linode_config_interfaces

> Object post_linode_config_interfaces(api_version, linode_id, config_id, post_linode_config_interfaces_request)

Reorder configuration profile interfaces

Reorders the existing Interfaces of a Configuration Profile.  - The User accessing this operation must have `read_write` grants to the Linode.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes config-interfaces-order $linodeId $configId \\   --ids 101 --ids 102 --ids 103     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The `id` of the Linode.
config_id = 56 # Integer | The `id` of the Configuration Profile.
post_linode_config_interfaces_request = LinodeOpenapiClient::PostLinodeConfigInterfacesRequest.new({ids: [101]}) # PostLinodeConfigInterfacesRequest | The desired Interface order for the Configuration Profile.

begin
  # Reorder configuration profile interfaces
  result = api_instance.post_linode_config_interfaces(api_version, linode_id, config_id, post_linode_config_interfaces_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_linode_config_interfaces: #{e}"
end
```

#### Using the post_linode_config_interfaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_linode_config_interfaces_with_http_info(api_version, linode_id, config_id, post_linode_config_interfaces_request)

```ruby
begin
  # Reorder configuration profile interfaces
  data, status_code, headers = api_instance.post_linode_config_interfaces_with_http_info(api_version, linode_id, config_id, post_linode_config_interfaces_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_linode_config_interfaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The &#x60;id&#x60; of the Linode. |  |
| **config_id** | **Integer** | The &#x60;id&#x60; of the Configuration Profile. |  |
| **post_linode_config_interfaces_request** | [**PostLinodeConfigInterfacesRequest**](PostLinodeConfigInterfacesRequest.md) | The desired Interface order for the Configuration Profile. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_linode_instance

> <Linode1> post_linode_instance(api_version, post_linode_instance_request)

Create a Linode

Creates a Linode Instance on your Account. In order for this request to complete successfully, your User must have the `add_linodes` grant. Creating a new Linode will incur a charge on your Account.  Linodes can be created using one of the available Types. Run [List Linode types](https://techdocs.akamai.com/linode-api/reference/get-linode-types) to get more information about each Type's specs and cost.  Linodes can be created in any one of our available Regions, which are accessible from the [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions) operation.  In an effort to fight spam, Linode restricts outbound connections on ports 25, 465, and 587 on all Linodes for new accounts created after November 5th, 2019. For more information, see our guide on [Running a Mail Server](https://www.linode.com/docs/guides/running-a-mail-server/).  __Important__. You must be an unrestricted User in order to add or modify tags on Linodes.  Linodes can be created in a number of ways:  - Using a Linode Public Image distribution or a Private Image you created based on another Linode.    - Run the [List images](https://techdocs.akamai.com/linode-api/reference/get-images) operation with authentication to view all available Images.    - The Linode will be `running` after it completes `provisioning`.   - A default config with two Disks, one being a 512 swap disk, is created.     - `swap_size` can be used to customize the swap disk size.   - Requires a `root_pass` be supplied to use for the root User's Account.   - It is recommended to supply SSH keys for the root User using the `authorized_keys` field.   - You may also supply a list of usernames via the `authorized_users` field.     - These users must have an SSH Key associated with your Profile first. See the [Add an SSH key](https://techdocs.akamai.com/linode-api/reference/post-add-ssh-key)) operation for more information.  - Using cloud-init with [Metadata](https://www.linode.com/docs/products/compute/compute-instances/guides/metadata/).   - Automate system configuration and software installation by providing a base-64 encoded [cloud-config](https://www.linode.com/docs/products/compute/compute-instances/guides/metadata-cloud-config/) file.   - Requires a compatible Image. You can determine compatible Images by checking for `cloud-init` under `capabilities` when running [List images](https://techdocs.akamai.com/linode-api/reference/get-images).   - Requires a compatible Region.  You can determine compatible Regions by checking for `Metadata` under `capabilities` when running [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions).  - Using a StackScript.    - Run [List StackScripts](https://techdocs.akamai.com/linode-api/reference/get-stack-scripts) for a list of available StackScripts.   - The Linode will be `running` after it completes `provisioning`.   - Requires a compatible Image to be supplied.     - Run [Get a StackScript](https://techdocs.akamai.com/linode-api/reference/get-stack-script) for compatible Images.   - Requires a `root_pass` be supplied to use for the root User's Account.   - It is recommended to supply SSH keys for the root User using the `authorized_keys` field.   - You may also supply a list of usernames via the `authorized_users` field.     - These users must have an SSH Key associated with your Profile first. See [Add an SSH key](https://techdocs.akamai.com/linode-api/reference/post-add-ssh-key) for more information.  - Using one of your other Linode's backups.   - You must create a Linode large enough to accommodate the Backup's size.   - The Disks and Config will match that of the Linode that was backed up.   - The `root_pass` will match that of the Linode that was backed up.  - Attached to a private VLAN.   - Review the `interfaces` property of the [Request Body Schema](https://techdocs.akamai.com/linode-api/reference/post-linode-instance) for details.   - For more information, see our guide on [Getting Started with VLANs](https://www.linode.com/docs/products/networking/vlans/get-started/).  - Create an empty Linode.   - The Linode will remain `offline` and must be manually started.     - Run [Boot a Linode](https://techdocs.akamai.com/linode-api/reference/post-boot-linode-instance).   - Disks and Configs must be created manually.   - This is only recommended for advanced use cases.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes create \\   --label linode123 \\   --root_pass aComplex@Password \\   --booted true \\   --stackscript_id 10079 \\   --stackscript_data '{\"gh_username\": \"linode\"}' \\   --region us-east \\   --disk_encryption enabled\\   --placement_group.id 528 \\   --type g6-standard-2 \\   --authorized_keys \"ssh-rsa AAAA_valid_public_ssh_key_123456785== user@their-computer\" \\   --authorized_users \"myUser\" \\   --authorized_users \"secondaryUser\" \\   --metadata.user_data \"I2Nsb3VkLWNvbmZpZw==\" \\   --firewall_id 9000     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_linode_instance_request = LinodeOpenapiClient::PostLinodeInstanceRequest.new({type: 'g6-standard-2', region: 'us-east'}) # PostLinodeInstanceRequest | The requested initial state of a new Linode.

begin
  # Create a Linode
  result = api_instance.post_linode_instance(api_version, post_linode_instance_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_linode_instance: #{e}"
end
```

#### Using the post_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Linode1>, Integer, Hash)> post_linode_instance_with_http_info(api_version, post_linode_instance_request)

```ruby
begin
  # Create a Linode
  data, status_code, headers = api_instance.post_linode_instance_with_http_info(api_version, post_linode_instance_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Linode1>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_linode_instance_request** | [**PostLinodeInstanceRequest**](PostLinodeInstanceRequest.md) | The requested initial state of a new Linode. |  |

### Return type

[**Linode1**](Linode1.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_migrate_linode_instance

> Object post_migrate_linode_instance(api_version, linode_id, opts)

Initiate a DC migration/pending host migration

Initiate a pending host migration that has been scheduled by Linode or initiate a cross data center (DC) migration.  A list of pending migrations, if any, can be accessed from [List notifications](https://techdocs.akamai.com/linode-api/reference/get-notifications). When the migration begins, your Linode will be shutdown if not already off. If the migration initiated the shutdown, it will reboot the Linode when completed.  To initiate a cross DC migration, you must pass a `region` parameter to the request body specifying the target data center region. You can view a list of all available regions and their feature capabilities from [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions). See our [Pricing Page](https://www.linode.com/pricing/) for Region-specific pricing, which applies after migration is complete. If your Linode has a DC migration already queued or you have initiated a previously scheduled migration, you will not be able to initiate a DC migration until it has completed.  `vpc` details  - Cross DC migrations are not allowed for Linodes that have a `vpc` purpose Configuration Profile Interface. Host migrations within the same DC are permitted. - See the [VPC documentation](https://www.linode.com/docs/products/networking/vpc/#technical-specifications) guide for its specifications and limitations.  `vlan` details  - Only Next Generation Network (NGN) data centers support VLANs. Run the [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions) operation to view the capabilities of data center regions. If a VLAN is attached to your Linode and you attempt to migrate or clone it to a non-NGN data center, the migration or cloning will not initiate. If a Linode cannot be migrated or cloned because of an incompatibility, you will be prompted to select a different data center or contact support. - Next Generation Network (NGN) data centers do not support IPv6 `/116` pools or IP Failover. If you have these features enabled on your Linode and attempt to migrate to an NGN data center, the migration will not initiate. If a Linode cannot be migrated because of an incompatibility, you will be prompted to select a different data center or contact support. - See the [VLANs Overview](https://www.linode.com/docs/products/networking/vlans/#technical-specifications) guide to view additional specifications and limitations.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes migrate 123 \\   --region us-central \\   --placement_group.id 528     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to migrate.
opts = {
  post_migrate_linode_instance_request: LinodeOpenapiClient::PostMigrateLinodeInstanceRequest.new # PostMigrateLinodeInstanceRequest | 
}

begin
  # Initiate a DC migration/pending host migration
  result = api_instance.post_migrate_linode_instance(api_version, linode_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_migrate_linode_instance: #{e}"
end
```

#### Using the post_migrate_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_migrate_linode_instance_with_http_info(api_version, linode_id, opts)

```ruby
begin
  # Initiate a DC migration/pending host migration
  data, status_code, headers = api_instance.post_migrate_linode_instance_with_http_info(api_version, linode_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_migrate_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to migrate. |  |
| **post_migrate_linode_instance_request** | [**PostMigrateLinodeInstanceRequest**](PostMigrateLinodeInstanceRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_mutate_linode_instance

> Object post_mutate_linode_instance(api_version, linode_id, opts)

Upgrade a Linode

Linodes created with now-deprecated Types are entitled to a free upgrade to the next generation. A mutating Linode will be allocated any new resources the upgraded Type provides, and will be subsequently restarted if it was currently running. If any actions are currently running or queued, those actions must be completed first before you can initiate a mutate.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes upgrade 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to mutate.
opts = {
  post_mutate_linode_instance_request: LinodeOpenapiClient::PostMutateLinodeInstanceRequest.new # PostMutateLinodeInstanceRequest | Whether to automatically resize disks or not.
}

begin
  # Upgrade a Linode
  result = api_instance.post_mutate_linode_instance(api_version, linode_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_mutate_linode_instance: #{e}"
end
```

#### Using the post_mutate_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_mutate_linode_instance_with_http_info(api_version, linode_id, opts)

```ruby
begin
  # Upgrade a Linode
  data, status_code, headers = api_instance.post_mutate_linode_instance_with_http_info(api_version, linode_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_mutate_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to mutate. |  |
| **post_mutate_linode_instance_request** | [**PostMutateLinodeInstanceRequest**](PostMutateLinodeInstanceRequest.md) | Whether to automatically resize disks or not. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_reboot_linode_instance

> Object post_reboot_linode_instance(api_version, linode_id, opts)

Reboot a Linode

Reboots a Linode you have permission to modify. If any actions are currently running or queued, those actions must be completed first before you can initiate a reboot.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes reboot 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the linode to reboot.
opts = {
  post_reboot_linode_instance_request: LinodeOpenapiClient::PostRebootLinodeInstanceRequest.new # PostRebootLinodeInstanceRequest | Optional reboot parameters.
}

begin
  # Reboot a Linode
  result = api_instance.post_reboot_linode_instance(api_version, linode_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_reboot_linode_instance: #{e}"
end
```

#### Using the post_reboot_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_reboot_linode_instance_with_http_info(api_version, linode_id, opts)

```ruby
begin
  # Reboot a Linode
  data, status_code, headers = api_instance.post_reboot_linode_instance_with_http_info(api_version, linode_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_reboot_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the linode to reboot. |  |
| **post_reboot_linode_instance_request** | [**PostRebootLinodeInstanceRequest**](PostRebootLinodeInstanceRequest.md) | Optional reboot parameters. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_rebuild_linode_instance

> <Linode7> post_rebuild_linode_instance(api_version, linode_id, post_rebuild_linode_instance_request)

Rebuild a Linode

Rebuilds a Linode you have the `read_write` permission to modify.  A rebuild will first shut down the Linode, delete all disks and configs on the Linode, and then deploy a new `image` to the Linode with the given attributes. Additionally:    - Requires an `image` be supplied.   - Requires a `root_pass` be supplied to use for the root User's Account.   - It is recommended to supply SSH keys for the root User using the `authorized_keys` field.   - Linodes utilizing Metadata (`\"has_user_data\": true`) should include `metadata.user_data` in the rebuild request to continue using the service.  During a rebuild, you can `enable` or `disable` local disk encryption. If disk encryption is not included in the request, the previous `disk_encryption` value is used. Disk encryption cannot be disabled if the compute instance is attached to a LKE nodepool.  You also have the option to resize the Linode to a different plan by including the `type` parameter with your request. Note that resizing involves migrating the Linode to a new hardware host, while rebuilding without resizing maintains the same hardware host. Resizing also requires significantly more time for completion of this operation. The following additional conditions apply:    - The Linode must not have a pending migration.   - Your Account cannot have an outstanding balance.   - The Linode must not have more disk allocation than the new Type allows.     - In that situation, you must first delete or resize the disk to be smaller.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes rebuild 123 \\   --image \"linode/debian9\" \\   --root_pass aComplex@Password \\   --disk_encryption disabled \\   --authorized_keys \"ssh-rsa AAAA_valid_public_ssh_key_123456785== user@their-computer\" \\   --authorized_users \"myUsername\" \\   --authorized_users \"secondaryUsername\" \\   --booted true \\   --stackscript_id 10079 \\   --stackscript_data '{\"gh_username\": \"linode\"}' \\   --type \"g6-standard-2\" \\   --metadata.userdata \"I2Nsb3VkLWNvbmZpZw==\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to rebuild.
post_rebuild_linode_instance_request = LinodeOpenapiClient::PostRebuildLinodeInstanceRequest.new({root_pass: 'aComplexP@ssword', image: 'linode/debian9'}) # PostRebuildLinodeInstanceRequest | The requested state your Linode will be rebuilt into.

begin
  # Rebuild a Linode
  result = api_instance.post_rebuild_linode_instance(api_version, linode_id, post_rebuild_linode_instance_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_rebuild_linode_instance: #{e}"
end
```

#### Using the post_rebuild_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Linode7>, Integer, Hash)> post_rebuild_linode_instance_with_http_info(api_version, linode_id, post_rebuild_linode_instance_request)

```ruby
begin
  # Rebuild a Linode
  data, status_code, headers = api_instance.post_rebuild_linode_instance_with_http_info(api_version, linode_id, post_rebuild_linode_instance_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Linode7>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_rebuild_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to rebuild. |  |
| **post_rebuild_linode_instance_request** | [**PostRebuildLinodeInstanceRequest**](PostRebuildLinodeInstanceRequest.md) | The requested state your Linode will be rebuilt into. |  |

### Return type

[**Linode7**](Linode7.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_rescue_linode_instance

> Object post_rescue_linode_instance(api_version, linode_id, opts)

Boot a Linode into rescue mode

Rescue Mode is a safe environment for performing many system recovery and disk management tasks. Rescue Mode is based on the Finnix recovery distribution, a self-contained and bootable Linux distribution. You can also use Rescue Mode for tasks other than disaster recovery, such as formatting disks to use different filesystems, copying data between disks, and downloading files from a disk via SSH and SFTP.  - Note that `sdh` is reserved and unavailable during rescue.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes rescue 123 \\   --devices.sda.disk_id 124458     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to rescue.
opts = {
  post_rescue_linode_instance_request: LinodeOpenapiClient::PostRescueLinodeInstanceRequest.new # PostRescueLinodeInstanceRequest | Optional object of devices to be mounted.
}

begin
  # Boot a Linode into rescue mode
  result = api_instance.post_rescue_linode_instance(api_version, linode_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_rescue_linode_instance: #{e}"
end
```

#### Using the post_rescue_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_rescue_linode_instance_with_http_info(api_version, linode_id, opts)

```ruby
begin
  # Boot a Linode into rescue mode
  data, status_code, headers = api_instance.post_rescue_linode_instance_with_http_info(api_version, linode_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_rescue_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to rescue. |  |
| **post_rescue_linode_instance_request** | [**PostRescueLinodeInstanceRequest**](PostRescueLinodeInstanceRequest.md) | Optional object of devices to be mounted. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_reset_disk_password

> Object post_reset_disk_password(api_version, linode_id, disk_id, post_reset_disk_password_request)

Reset a disk root password

Resets the password of a Disk you have permission to `read_write`.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes disk-reset-password \\   123 25674 \\   --password aComplex@Password     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
disk_id = 56 # Integer | ID of the Disk to look up.
post_reset_disk_password_request = LinodeOpenapiClient::PostResetDiskPasswordRequest.new({password: 'another@complex^Password123'}) # PostResetDiskPasswordRequest | The new password.

begin
  # Reset a disk root password
  result = api_instance.post_reset_disk_password(api_version, linode_id, disk_id, post_reset_disk_password_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_reset_disk_password: #{e}"
end
```

#### Using the post_reset_disk_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_reset_disk_password_with_http_info(api_version, linode_id, disk_id, post_reset_disk_password_request)

```ruby
begin
  # Reset a disk root password
  data, status_code, headers = api_instance.post_reset_disk_password_with_http_info(api_version, linode_id, disk_id, post_reset_disk_password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_reset_disk_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **disk_id** | **Integer** | ID of the Disk to look up. |  |
| **post_reset_disk_password_request** | [**PostResetDiskPasswordRequest**](PostResetDiskPasswordRequest.md) | The new password. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_reset_linode_password

> Object post_reset_linode_password(api_version, linode_id, opts)

Reset a Linode's root password

Resets the root password for this Linode.  - Your Linode must be [shut down](https://techdocs.akamai.com/linode-api/reference/post-shutdown-linode-instance) for a password reset to complete. - If your Linode has more than one disk (not counting its swap disk), run the [Reset a disk root password](https://techdocs.akamai.com/linode-api/reference/post-reset-disk-password) operation to update a specific disk's root password. - A `password_reset` event is generated when a root password reset is successful.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes linode-reset-password 123 a$eCure4assw0rd!43v51     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode for which to reset its root password.
opts = {
  post_reset_linode_password_request: LinodeOpenapiClient::PostResetLinodePasswordRequest.new({root_pass: 'a$eCure4assw0rd!43v51'}) # PostResetLinodePasswordRequest | This Linode's new root password.
}

begin
  # Reset a Linode's root password
  result = api_instance.post_reset_linode_password(api_version, linode_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_reset_linode_password: #{e}"
end
```

#### Using the post_reset_linode_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_reset_linode_password_with_http_info(api_version, linode_id, opts)

```ruby
begin
  # Reset a Linode's root password
  data, status_code, headers = api_instance.post_reset_linode_password_with_http_info(api_version, linode_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_reset_linode_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode for which to reset its root password. |  |
| **post_reset_linode_password_request** | [**PostResetLinodePasswordRequest**](PostResetLinodePasswordRequest.md) | This Linode&#39;s new root password. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_resize_disk

> Object post_resize_disk(api_version, linode_id, disk_id, post_resize_disk_request)

Resize a disk

Resizes a Disk you have permission to `read_write`.  The Disk must not be in use. If the Disk is in use, the request will succeed but the resize will ultimately fail. For a request to succeed, the Linode must be shut down prior to resizing the Disk, or the Disk must not be assigned to the Linode's active Configuration Profile.  If you are resizing the Disk to a smaller size, it cannot be made smaller than what is required by the total size of the files current on the Disk.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes disk-resize 123 25674 \\   --size 2048     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
disk_id = 56 # Integer | ID of the Disk to look up.
post_resize_disk_request = LinodeOpenapiClient::PostResizeDiskRequest.new({size: 2048}) # PostResizeDiskRequest | The new size of the Disk.

begin
  # Resize a disk
  result = api_instance.post_resize_disk(api_version, linode_id, disk_id, post_resize_disk_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_resize_disk: #{e}"
end
```

#### Using the post_resize_disk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_resize_disk_with_http_info(api_version, linode_id, disk_id, post_resize_disk_request)

```ruby
begin
  # Resize a disk
  data, status_code, headers = api_instance.post_resize_disk_with_http_info(api_version, linode_id, disk_id, post_resize_disk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_resize_disk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **disk_id** | **Integer** | ID of the Disk to look up. |  |
| **post_resize_disk_request** | [**PostResizeDiskRequest**](PostResizeDiskRequest.md) | The new size of the Disk. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_resize_linode_instance

> Object post_resize_linode_instance(api_version, linode_id, post_resize_linode_instance_request)

Resize a Linode

Resizes a Linode you have the `read_write` permission to a different Type. If any actions are currently running or queued, those actions must be completed first before you can initiate a resize. Additionally, the following criteria must be met in order to resize a Linode:    - The Linode must not have a pending migration.   - Your Account cannot have an outstanding balance.   - The Linode must not have more disk allocation than the new Type allows.     - In that situation, you must first delete or resize the disk to be smaller.  You can also resize a Linode when using the [Rebuild a Linode](https://techdocs.akamai.com/linode-api/reference/post-rebuild-linode-instance) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes resize 123 \\   --type g6-standard-2     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to resize.
post_resize_linode_instance_request = LinodeOpenapiClient::PostResizeLinodeInstanceRequest.new({type: 'g6-standard-2'}) # PostResizeLinodeInstanceRequest | The Type your current Linode will resize to, and whether to attempt to automatically resize the Linode's disks.

begin
  # Resize a Linode
  result = api_instance.post_resize_linode_instance(api_version, linode_id, post_resize_linode_instance_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_resize_linode_instance: #{e}"
end
```

#### Using the post_resize_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_resize_linode_instance_with_http_info(api_version, linode_id, post_resize_linode_instance_request)

```ruby
begin
  # Resize a Linode
  data, status_code, headers = api_instance.post_resize_linode_instance_with_http_info(api_version, linode_id, post_resize_linode_instance_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_resize_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to resize. |  |
| **post_resize_linode_instance_request** | [**PostResizeLinodeInstanceRequest**](PostResizeLinodeInstanceRequest.md) | The Type your current Linode will resize to, and whether to attempt to automatically resize the Linode&#39;s disks. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_restore_backup

> Object post_restore_backup(api_version, linode_id, backup_id, post_restore_backup_request)

Restore a backup

Restores a Linode's Backup to the specified Linode.  The following conditions apply:    - Backups may not be restored across Regions.   - Only successfully completed Backups that are not undergoing maintenance can be restored.   - The Linode that the Backup is being restored to must not itself be in the process of creating a Backup.  __Note__. When you restore a backup, the restored disk is assigned the same [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) as the original disk. In most cases, this is acceptable and does not cause issues. However, if you attempt to mount both the original disk and the corresponding restore disk at the same time (by assigning them both to devices in your Configuration Profile's __Block Device Assignment__), you will encounter a UUID \"collision\".  When this happens, the system selects, and mounts, only one of the disks at random. This is due to both disks sharing the same UUID, and your instance _may fail to boot_ since it will not be clear which disk is root. If your system does boot, you will not see any immediate indication if you are booted into the restored disk or the original disk, and you will be unable to access both disks at the same time.  To avoid this, we recommend only restoring a backup to the same Compute Instance if you do not intend on mounting them at the same time or are comfortable modifying UUIDs. If you need access to files on both the original disk and the restored disk simultaneously (such as needing to copy files between them), we suggest either restoring the backup to a separate Compute Instance or [creating](https://techdocs.akamai.com/linode-api/reference/post-linode-instance) a new Compute Instance with the desired `backup_id`.  To learn more about block device assignments and viewing your disks' UUIDs, see our guide on [Configuration Profiles](https://www.linode.com/docs/products/compute/compute-instances/guides/configuration-profiles/#block-device-assignment).  __Note__. Backups are not encrypted even when they are taken from an encrypted disk. When a backup is restored, and if encryption is enabled, the data stored on the disk is encrypted again.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes backup-restore 123 123456 \\   --linode_id 234 \\   --overwrite true     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The ID of the Linode that the Backup belongs to.
backup_id = 56 # Integer | The ID of the Backup to restore.
post_restore_backup_request = LinodeOpenapiClient::PostRestoreBackupRequest.new({linode_id: 234}) # PostRestoreBackupRequest | Parameters to provide when restoring the Backup.

begin
  # Restore a backup
  result = api_instance.post_restore_backup(api_version, linode_id, backup_id, post_restore_backup_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_restore_backup: #{e}"
end
```

#### Using the post_restore_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_restore_backup_with_http_info(api_version, linode_id, backup_id, post_restore_backup_request)

```ruby
begin
  # Restore a backup
  data, status_code, headers = api_instance.post_restore_backup_with_http_info(api_version, linode_id, backup_id, post_restore_backup_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_restore_backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The ID of the Linode that the Backup belongs to. |  |
| **backup_id** | **Integer** | The ID of the Backup to restore. |  |
| **post_restore_backup_request** | [**PostRestoreBackupRequest**](PostRestoreBackupRequest.md) | Parameters to provide when restoring the Backup. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_shutdown_linode_instance

> Object post_shutdown_linode_instance(api_version, linode_id)

Shut down a Linode

Shuts down a Linode you have permission to modify. If any actions are currently running or queued, those actions must be completed first before you can initiate a shutdown.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes shutdown 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to shutdown.

begin
  # Shut down a Linode
  result = api_instance.post_shutdown_linode_instance(api_version, linode_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_shutdown_linode_instance: #{e}"
end
```

#### Using the post_shutdown_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_shutdown_linode_instance_with_http_info(api_version, linode_id)

```ruby
begin
  # Shut down a Linode
  data, status_code, headers = api_instance.post_shutdown_linode_instance_with_http_info(api_version, linode_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_shutdown_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to shutdown. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_snapshot

> <PostSnapshot200Response> post_snapshot(api_version, linode_id, post_snapshot_request)

Create a snapshot

Creates a snapshot backup of a Linode.  __Note__. Backups are not encrypted even when they are taken from an encrypted disk. When a backup is restored, and if encryption is enabled, the data stored on the disk is encrypted again.  __Important__. If you already have a snapshot of this Linode, this is a destructive action. The previous snapshot will be deleted.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes snapshot 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The ID of the Linode the backups belong to.
post_snapshot_request = LinodeOpenapiClient::PostSnapshotRequest.new({label: 'SnapshotLabel'}) # PostSnapshotRequest | 

begin
  # Create a snapshot
  result = api_instance.post_snapshot(api_version, linode_id, post_snapshot_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_snapshot: #{e}"
end
```

#### Using the post_snapshot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostSnapshot200Response>, Integer, Hash)> post_snapshot_with_http_info(api_version, linode_id, post_snapshot_request)

```ruby
begin
  # Create a snapshot
  data, status_code, headers = api_instance.post_snapshot_with_http_info(api_version, linode_id, post_snapshot_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostSnapshot200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->post_snapshot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The ID of the Linode the backups belong to. |  |
| **post_snapshot_request** | [**PostSnapshotRequest**](PostSnapshotRequest.md) |  |  |

### Return type

[**PostSnapshot200Response**](PostSnapshot200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_disk

> <PutDisk200Response> put_disk(api_version, linode_id, disk_id, put_disk_request)

Update a disk

Updates a Disk that you have permission to `read_write`.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes disk-update 123 25674 \\   --label \"Debian 9 Disk\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
disk_id = 56 # Integer | ID of the Disk to look up.
put_disk_request = LinodeOpenapiClient::PutDiskRequest.new # PutDiskRequest | Updates the parameters of a single Disk.

begin
  # Update a disk
  result = api_instance.put_disk(api_version, linode_id, disk_id, put_disk_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->put_disk: #{e}"
end
```

#### Using the put_disk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutDisk200Response>, Integer, Hash)> put_disk_with_http_info(api_version, linode_id, disk_id, put_disk_request)

```ruby
begin
  # Update a disk
  data, status_code, headers = api_instance.put_disk_with_http_info(api_version, linode_id, disk_id, put_disk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutDisk200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->put_disk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **disk_id** | **Integer** | ID of the Disk to look up. |  |
| **put_disk_request** | [**PutDiskRequest**](PutDiskRequest.md) | Updates the parameters of a single Disk. |  |

### Return type

[**PutDisk200Response**](PutDisk200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_linode_config

> <PutLinodeConfig200Response> put_linode_config(api_version, linode_id, config_id, put_linode_config_request)

Update a config profile

Updates a Configuration profile.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes config-update 123 23456 \\   --kernel \"linode/latest-64bit\" \\   --comments \"This is my main Config\" \\   --memory_limit 2048 \\   --run_level default \\   --virt_mode paravirt \\   --helpers.updatedb_disabled true \\   --helpers.distro true \\   --helpers.modules_dep true \\   --helpers.network true \\   --helpers.devtmpfs_automount false \\   --label \"My Config\" \\   --devices.sda.disk_id 123456 \\   --devices.sdb.disk_id 123457     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The `id` of the Linode.
config_id = 56 # Integer | The `id` of the Configuration Profile.
put_linode_config_request = LinodeOpenapiClient::PutLinodeConfigRequest.new # PutLinodeConfigRequest | The Configuration profile parameters to modify.

begin
  # Update a config profile
  result = api_instance.put_linode_config(api_version, linode_id, config_id, put_linode_config_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->put_linode_config: #{e}"
end
```

#### Using the put_linode_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutLinodeConfig200Response>, Integer, Hash)> put_linode_config_with_http_info(api_version, linode_id, config_id, put_linode_config_request)

```ruby
begin
  # Update a config profile
  data, status_code, headers = api_instance.put_linode_config_with_http_info(api_version, linode_id, config_id, put_linode_config_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutLinodeConfig200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->put_linode_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The &#x60;id&#x60; of the Linode. |  |
| **config_id** | **Integer** | The &#x60;id&#x60; of the Configuration Profile. |  |
| **put_linode_config_request** | [**PutLinodeConfigRequest**](PutLinodeConfigRequest.md) | The Configuration profile parameters to modify. |  |

### Return type

[**PutLinodeConfig200Response**](PutLinodeConfig200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_linode_config_interface

> <PutLinodeConfigInterface200Response> put_linode_config_interface(api_version, linode_id, config_id, interface_id, put_linode_config_interface_request)

Update a configuration profile interface

Updates a `vpc` or `public` purpose Interface for this Configuration Profile.  - The User accessing this operation must have `read_write` grants to the Linode. - A successful request triggers a `linode_config_update` event. - The Interface `purpose` cannot be updated with this operation. - VPC Subnets cannot be updated on an Interface. A new `vpc` purpose Interface must be created to assign a different Subnet to a Configuration Profile. - Only `primary` can be updated for `public` purpose Interfaces. - This operation not currently allowed for `vlan` purpose Interfaces.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes config-interface-update $linodeId $configId $interfaceId \\   --primary true \\   --ipv4.vpc \"10.0.1.2\" \\   --ipv4.nat_1_1 \"203.0.113.2\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The `id` of the Linode.
config_id = 56 # Integer | The `id` of the Configuration Profile.
interface_id = 56 # Integer | The `id` of the Linode Configuration Profile Interface.
put_linode_config_interface_request = LinodeOpenapiClient::PutLinodeConfigInterfaceRequest.new # PutLinodeConfigInterfaceRequest | The updated Interface.

begin
  # Update a configuration profile interface
  result = api_instance.put_linode_config_interface(api_version, linode_id, config_id, interface_id, put_linode_config_interface_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->put_linode_config_interface: #{e}"
end
```

#### Using the put_linode_config_interface_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutLinodeConfigInterface200Response>, Integer, Hash)> put_linode_config_interface_with_http_info(api_version, linode_id, config_id, interface_id, put_linode_config_interface_request)

```ruby
begin
  # Update a configuration profile interface
  data, status_code, headers = api_instance.put_linode_config_interface_with_http_info(api_version, linode_id, config_id, interface_id, put_linode_config_interface_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutLinodeConfigInterface200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->put_linode_config_interface_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The &#x60;id&#x60; of the Linode. |  |
| **config_id** | **Integer** | The &#x60;id&#x60; of the Configuration Profile. |  |
| **interface_id** | **Integer** | The &#x60;id&#x60; of the Linode Configuration Profile Interface. |  |
| **put_linode_config_interface_request** | [**PutLinodeConfigInterfaceRequest**](PutLinodeConfigInterfaceRequest.md) | The updated Interface. |  |

### Return type

[**PutLinodeConfigInterface200Response**](PutLinodeConfigInterface200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_linode_instance

> <Linode6> put_linode_instance(api_version, linode_id, linode5)

Update a Linode

Updates a Linode that you have permission to `read_write`.  __Important__. You must be an unrestricted User in order to add or modify tags on Linodes.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes update 7833080 \\   --label linode123 \\   --backups.schedule.day \"Saturday\" \\   --backups.schedule.window \"W22\" \\   --alerts.cpu 180 \\   --alerts.network_in 10 \\   --alerts.network_out 10 \\   --alerts.transfer_quota 80 \\   --alerts.io 10000     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | ID of the Linode to look up.
linode5 = LinodeOpenapiClient::Linode5.new # Linode5 | Any field that is not marked as `readOnly` may be updated. Fields that are marked `readOnly` will be ignored. If any updated field fails to pass validation, the Linode will not be updated.

begin
  # Update a Linode
  result = api_instance.put_linode_instance(api_version, linode_id, linode5)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->put_linode_instance: #{e}"
end
```

#### Using the put_linode_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Linode6>, Integer, Hash)> put_linode_instance_with_http_info(api_version, linode_id, linode5)

```ruby
begin
  # Update a Linode
  data, status_code, headers = api_instance.put_linode_instance_with_http_info(api_version, linode_id, linode5)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Linode6>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->put_linode_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | ID of the Linode to look up. |  |
| **linode5** | [**Linode5**](Linode5.md) | Any field that is not marked as &#x60;readOnly&#x60; may be updated. Fields that are marked &#x60;readOnly&#x60; will be ignored. If any updated field fails to pass validation, the Linode will not be updated. |  |

### Return type

[**Linode6**](Linode6.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_linode_ip

> <PutLinodeIp200Response> put_linode_ip(api_version, linode_id, address, opts)

Update an IP address's RDNS for a Linode

Updates the reverse DNS (RDNS) for a Linode's IP Address. This may be done for both IPv4 and IPv6 addresses.  Setting the RDNS to `null` for a public IPv4 address, resets it to the default `ip.linodeusercontent.com` RDNS value.   <<LB>>  ---   - __CLI__.      ```     linode-cli linodes ip-update 123 \\   203.0.113.1 \\   --rdns test.example.org     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     linodes:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::LinodeInstancesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The ID of the Linode.
address = 'address_example' # String | The IP address.
opts = {
  put_linode_ip_request: LinodeOpenapiClient::PutLinodeIpRequest.new({rdns: 'test.example.org'}) # PutLinodeIpRequest | The information to update for the IP address.
}

begin
  # Update an IP address's RDNS for a Linode
  result = api_instance.put_linode_ip(api_version, linode_id, address, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->put_linode_ip: #{e}"
end
```

#### Using the put_linode_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutLinodeIp200Response>, Integer, Hash)> put_linode_ip_with_http_info(api_version, linode_id, address, opts)

```ruby
begin
  # Update an IP address's RDNS for a Linode
  data, status_code, headers = api_instance.put_linode_ip_with_http_info(api_version, linode_id, address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutLinodeIp200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling LinodeInstancesApi->put_linode_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The ID of the Linode. |  |
| **address** | **String** | The IP address. |  |
| **put_linode_ip_request** | [**PutLinodeIpRequest**](PutLinodeIpRequest.md) | The information to update for the IP address. | [optional] |

### Return type

[**PutLinodeIp200Response**](PutLinodeIp200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

