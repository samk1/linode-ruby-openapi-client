# LinodeOpenapiClient::DatabasesApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_database_mysql_instance_backup**](DatabasesApi.md#delete_database_mysql_instance_backup) | **DELETE** /{apiVersion}/databases/mysql/instances/{instanceId}/backups/{backupId} | Delete a managed MySQL database backup |
| [**delete_database_postgre_sql_instance_backup**](DatabasesApi.md#delete_database_postgre_sql_instance_backup) | **DELETE** /{apiVersion}/databases/postgresql/instances/{instanceId}/backups/{backupId} | Delete a managed PostgreSQL database backup |
| [**delete_databases_mysql_instance**](DatabasesApi.md#delete_databases_mysql_instance) | **DELETE** /{apiVersion}/databases/mysql/instances/{instanceId} | Delete a managed MySQL database |
| [**delete_databases_postgre_sql_instance**](DatabasesApi.md#delete_databases_postgre_sql_instance) | **DELETE** /{apiVersion}/databases/postgresql/instances/{instanceId} | Delete a managed PostgreSQL database |
| [**get_databases_engine**](DatabasesApi.md#get_databases_engine) | **GET** /{apiVersion}/databases/engines/{engineId} | Get a managed database engine |
| [**get_databases_engines**](DatabasesApi.md#get_databases_engines) | **GET** /{apiVersion}/databases/engines | List managed database engines |
| [**get_databases_instances**](DatabasesApi.md#get_databases_instances) | **GET** /{apiVersion}/databases/instances | List managed databases |
| [**get_databases_mysql_instance**](DatabasesApi.md#get_databases_mysql_instance) | **GET** /{apiVersion}/databases/mysql/instances/{instanceId} | Get a managed MySQL database |
| [**get_databases_mysql_instance_backup**](DatabasesApi.md#get_databases_mysql_instance_backup) | **GET** /{apiVersion}/databases/mysql/instances/{instanceId}/backups/{backupId} | Get a managed MySQL database backup |
| [**get_databases_mysql_instance_backups**](DatabasesApi.md#get_databases_mysql_instance_backups) | **GET** /{apiVersion}/databases/mysql/instances/{instanceId}/backups | List managed MySQL database backups |
| [**get_databases_mysql_instance_credentials**](DatabasesApi.md#get_databases_mysql_instance_credentials) | **GET** /{apiVersion}/databases/mysql/instances/{instanceId}/credentials | Get managed MySQL database credentials |
| [**get_databases_mysql_instance_ssl**](DatabasesApi.md#get_databases_mysql_instance_ssl) | **GET** /{apiVersion}/databases/mysql/instances/{instanceId}/ssl | Get a managed MySQL database SSL certificate |
| [**get_databases_mysql_instances**](DatabasesApi.md#get_databases_mysql_instances) | **GET** /{apiVersion}/databases/mysql/instances | List managed MySQL databases |
| [**get_databases_postgre_sql_instance**](DatabasesApi.md#get_databases_postgre_sql_instance) | **GET** /{apiVersion}/databases/postgresql/instances/{instanceId} | Get a managed PostgreSQL database |
| [**get_databases_postgre_sql_instance_backups**](DatabasesApi.md#get_databases_postgre_sql_instance_backups) | **GET** /{apiVersion}/databases/postgresql/instances/{instanceId}/backups | List managed PostgreSQL database backups |
| [**get_databases_postgre_sql_instance_credentials**](DatabasesApi.md#get_databases_postgre_sql_instance_credentials) | **GET** /{apiVersion}/databases/postgresql/instances/{instanceId}/credentials | Get managed PostgreSQL database credentials |
| [**get_databases_postgre_sql_instances**](DatabasesApi.md#get_databases_postgre_sql_instances) | **GET** /{apiVersion}/databases/postgresql/instances | List managed PostgreSQL databases |
| [**get_databases_postgresql_instance_backup**](DatabasesApi.md#get_databases_postgresql_instance_backup) | **GET** /{apiVersion}/databases/postgresql/instances/{instanceId}/backups/{backupId} | Get a managed PostgreSQL database backup |
| [**get_databases_postgresql_instance_ssl**](DatabasesApi.md#get_databases_postgresql_instance_ssl) | **GET** /{apiVersion}/databases/postgresql/instances/{instanceId}/ssl | Get a managed PostgreSQL database SSL certificate |
| [**get_databases_type**](DatabasesApi.md#get_databases_type) | **GET** /{apiVersion}/databases/types/{typeId} | Get a managed database type |
| [**get_databases_types**](DatabasesApi.md#get_databases_types) | **GET** /{apiVersion}/databases/types | List managed database types |
| [**post_databases_mysql_instance_backup**](DatabasesApi.md#post_databases_mysql_instance_backup) | **POST** /{apiVersion}/databases/mysql/instances/{instanceId}/backups | Create a managed MySQL database backup snapshot |
| [**post_databases_mysql_instance_backup_restore**](DatabasesApi.md#post_databases_mysql_instance_backup_restore) | **POST** /{apiVersion}/databases/mysql/instances/{instanceId}/backups/{backupId}/restore | Restore a managed MySQL database backup |
| [**post_databases_mysql_instance_credentials_reset**](DatabasesApi.md#post_databases_mysql_instance_credentials_reset) | **POST** /{apiVersion}/databases/mysql/instances/{instanceId}/credentials/reset | Reset managed MySQL database credentials |
| [**post_databases_mysql_instance_patch**](DatabasesApi.md#post_databases_mysql_instance_patch) | **POST** /{apiVersion}/databases/mysql/instances/{instanceId}/patch | Patch a managed MySQL database |
| [**post_databases_mysql_instances**](DatabasesApi.md#post_databases_mysql_instances) | **POST** /{apiVersion}/databases/mysql/instances | Create a managed MySQL database |
| [**post_databases_postgre_sql_instance_backup**](DatabasesApi.md#post_databases_postgre_sql_instance_backup) | **POST** /{apiVersion}/databases/postgresql/instances/{instanceId}/backups | Create a managed PostgreSQL database backup snapshot |
| [**post_databases_postgre_sql_instance_backup_restore**](DatabasesApi.md#post_databases_postgre_sql_instance_backup_restore) | **POST** /{apiVersion}/databases/postgresql/instances/{instanceId}/backups/{backupId}/restore | Restore a managed PostgreSQL database backup |
| [**post_databases_postgre_sql_instance_credentials_reset**](DatabasesApi.md#post_databases_postgre_sql_instance_credentials_reset) | **POST** /{apiVersion}/databases/postgresql/instances/{instanceId}/credentials/reset | Reset managed PostgreSQL database credentials |
| [**post_databases_postgre_sql_instance_patch**](DatabasesApi.md#post_databases_postgre_sql_instance_patch) | **POST** /{apiVersion}/databases/postgresql/instances/{instanceId}/patch | Patch a managed PostgreSQL database |
| [**post_databases_postgre_sql_instances**](DatabasesApi.md#post_databases_postgre_sql_instances) | **POST** /{apiVersion}/databases/postgresql/instances | Create a managed PostgreSQL database |
| [**put_databases_mysql_instance**](DatabasesApi.md#put_databases_mysql_instance) | **PUT** /{apiVersion}/databases/mysql/instances/{instanceId} | Update a managed MySQL database |
| [**put_databases_postgre_sql_instance**](DatabasesApi.md#put_databases_postgre_sql_instance) | **PUT** /{apiVersion}/databases/postgresql/instances/{instanceId} | Update a managed PostgreSQL database |


## delete_database_mysql_instance_backup

> Object delete_database_mysql_instance_backup(api_version, instance_id, backup_id)

Delete a managed MySQL database backup

__This operation is currently only available for customers who already have an active Managed Database.__  Delete a single backup for an accessible Managed MySQL Database.  Requires `read_write` access to the Database.  The Database must not be provisioning to perform this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-backup-delete 123 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.
backup_id = 56 # Integer | The ID of the Managed MySQL Database backup.

begin
  # Delete a managed MySQL database backup
  result = api_instance.delete_database_mysql_instance_backup(api_version, instance_id, backup_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->delete_database_mysql_instance_backup: #{e}"
end
```

#### Using the delete_database_mysql_instance_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_database_mysql_instance_backup_with_http_info(api_version, instance_id, backup_id)

```ruby
begin
  # Delete a managed MySQL database backup
  data, status_code, headers = api_instance.delete_database_mysql_instance_backup_with_http_info(api_version, instance_id, backup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->delete_database_mysql_instance_backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |
| **backup_id** | **Integer** | The ID of the Managed MySQL Database backup. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_database_postgre_sql_instance_backup

> Object delete_database_postgre_sql_instance_backup(api_version, instance_id, backup_id)

Delete a managed PostgreSQL database backup

__This operation is currently only available for customers who already have an active Managed Database.__  Delete a single backup for an accessible Managed PostgreSQL Database.  Requires `read_write` access to the Database.  The Database must not be provisioning to perform this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-backup-delete 123 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.
backup_id = 56 # Integer | The ID of the Managed PostgreSQL Database backup.

begin
  # Delete a managed PostgreSQL database backup
  result = api_instance.delete_database_postgre_sql_instance_backup(api_version, instance_id, backup_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->delete_database_postgre_sql_instance_backup: #{e}"
end
```

#### Using the delete_database_postgre_sql_instance_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_database_postgre_sql_instance_backup_with_http_info(api_version, instance_id, backup_id)

```ruby
begin
  # Delete a managed PostgreSQL database backup
  data, status_code, headers = api_instance.delete_database_postgre_sql_instance_backup_with_http_info(api_version, instance_id, backup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->delete_database_postgre_sql_instance_backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |
| **backup_id** | **Integer** | The ID of the Managed PostgreSQL Database backup. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_databases_mysql_instance

> Object delete_databases_mysql_instance(api_version, instance_id)

Delete a managed MySQL database

__This operation is currently only available for customers who already have an active Managed Database.__  Remove a Managed MySQL Database from your Account.  Requires `read_write` access to the Database.  The Database must have an `active`, `failed`, or `degraded` status to perform this operation.  Only unrestricted Users can access this operation, and have access regardless of the acting token's OAuth scopes.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-delete 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.

begin
  # Delete a managed MySQL database
  result = api_instance.delete_databases_mysql_instance(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->delete_databases_mysql_instance: #{e}"
end
```

#### Using the delete_databases_mysql_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_databases_mysql_instance_with_http_info(api_version, instance_id)

```ruby
begin
  # Delete a managed MySQL database
  data, status_code, headers = api_instance.delete_databases_mysql_instance_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->delete_databases_mysql_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_databases_postgre_sql_instance

> Object delete_databases_postgre_sql_instance(api_version, instance_id)

Delete a managed PostgreSQL database

__This operation is currently only available for customers who already have an active Managed Database.__  Remove a Managed PostgreSQL Database from your Account.  Requires `read_write` access to the Database.  The Database must have an `active`, `failed`, or `degraded` status to perform this operation.  Only unrestricted Users can access this operation, and have access regardless of the acting token's OAuth scopes.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-delete 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.

begin
  # Delete a managed PostgreSQL database
  result = api_instance.delete_databases_postgre_sql_instance(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->delete_databases_postgre_sql_instance: #{e}"
end
```

#### Using the delete_databases_postgre_sql_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_databases_postgre_sql_instance_with_http_info(api_version, instance_id)

```ruby
begin
  # Delete a managed PostgreSQL database
  data, status_code, headers = api_instance.delete_databases_postgre_sql_instance_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->delete_databases_postgre_sql_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_engine

> <GetDatabasesEngine200Response> get_databases_engine(api_version, engine_id, opts)

Get a managed database engine

__This operation is currently only available for customers who already have an active Managed Database.__  Display information for a single Managed Database engine type and version.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases engine-view     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
engine_id = 'engine_id_example' # String | The ID of the Managed Database engine.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # Get a managed database engine
  result = api_instance.get_databases_engine(api_version, engine_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_engine: #{e}"
end
```

#### Using the get_databases_engine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesEngine200Response>, Integer, Hash)> get_databases_engine_with_http_info(api_version, engine_id, opts)

```ruby
begin
  # Get a managed database engine
  data, status_code, headers = api_instance.get_databases_engine_with_http_info(api_version, engine_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesEngine200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_engine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **engine_id** | **String** | The ID of the Managed Database engine. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetDatabasesEngine200Response**](GetDatabasesEngine200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_engines

> <GetDatabasesEngines200Response> get_databases_engines(api_version, opts)

List managed database engines

__This operation is currently only available for customers who already have an active Managed Database.__  Display all available Managed Database engine types and versions. Engine IDs are used when creating new Managed Databases.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases engines     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List managed database engines
  result = api_instance.get_databases_engines(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_engines: #{e}"
end
```

#### Using the get_databases_engines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesEngines200Response>, Integer, Hash)> get_databases_engines_with_http_info(api_version, opts)

```ruby
begin
  # List managed database engines
  data, status_code, headers = api_instance.get_databases_engines_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesEngines200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_engines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetDatabasesEngines200Response**](GetDatabasesEngines200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_instances

> <GetDatabasesInstances200Response> get_databases_instances(api_version, opts)

List managed databases

__This operation is currently only available for customers who already have an active Managed Database.__  Display all Managed Databases that are accessible by your User, regardless of engine type.  For more detailed information on a particular Database instance, make a request to its `instance_uri`.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List managed databases
  result = api_instance.get_databases_instances(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_instances: #{e}"
end
```

#### Using the get_databases_instances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesInstances200Response>, Integer, Hash)> get_databases_instances_with_http_info(api_version, opts)

```ruby
begin
  # List managed databases
  data, status_code, headers = api_instance.get_databases_instances_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesInstances200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetDatabasesInstances200Response**](GetDatabasesInstances200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_mysql_instance

> <GetDatabasesMysqlInstance200Response> get_databases_mysql_instance(api_version, instance_id)

Get a managed MySQL database

__This operation is currently only available for customers who already have an active Managed Database.__  Display information for a single, accessible Managed MySQL Database.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.

begin
  # Get a managed MySQL database
  result = api_instance.get_databases_mysql_instance(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instance: #{e}"
end
```

#### Using the get_databases_mysql_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesMysqlInstance200Response>, Integer, Hash)> get_databases_mysql_instance_with_http_info(api_version, instance_id)

```ruby
begin
  # Get a managed MySQL database
  data, status_code, headers = api_instance.get_databases_mysql_instance_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesMysqlInstance200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |

### Return type

[**GetDatabasesMysqlInstance200Response**](GetDatabasesMysqlInstance200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_mysql_instance_backup

> <GetDatabasesMysqlInstanceBackup200Response> get_databases_mysql_instance_backup(api_version, instance_id, backup_id)

Get a managed MySQL database backup

__This operation is currently only available for customers who already have an active Managed Database.__  Display information for a single backup for an accessible Managed MySQL Database.  The Database must not be provisioning to perform this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-backup-view 123 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.
backup_id = 56 # Integer | The ID of the Managed MySQL Database backup.

begin
  # Get a managed MySQL database backup
  result = api_instance.get_databases_mysql_instance_backup(api_version, instance_id, backup_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instance_backup: #{e}"
end
```

#### Using the get_databases_mysql_instance_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesMysqlInstanceBackup200Response>, Integer, Hash)> get_databases_mysql_instance_backup_with_http_info(api_version, instance_id, backup_id)

```ruby
begin
  # Get a managed MySQL database backup
  data, status_code, headers = api_instance.get_databases_mysql_instance_backup_with_http_info(api_version, instance_id, backup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesMysqlInstanceBackup200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instance_backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |
| **backup_id** | **Integer** | The ID of the Managed MySQL Database backup. |  |

### Return type

[**GetDatabasesMysqlInstanceBackup200Response**](GetDatabasesMysqlInstanceBackup200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_mysql_instance_backups

> <GetDatabasesMysqlInstanceBackups200Response> get_databases_mysql_instance_backups(api_version, instance_id, opts)

List managed MySQL database backups

__This operation is currently only available for customers who already have an active Managed Database.__  Display all backups for an accessible Managed MySQL Database.  The Database must not be provisioning to perform this operation.  Database `auto` type backups are created every 24 hours at 0:00 UTC. Each `auto` backup is retained for 7 days.  Database `snapshot` type backups are created by accessing the [Create a managed MySQL database backup snapshot](https://techdocs.akamai.com/linode-api/reference/post-databases-mysql-instance-backup) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-backups-list 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List managed MySQL database backups
  result = api_instance.get_databases_mysql_instance_backups(api_version, instance_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instance_backups: #{e}"
end
```

#### Using the get_databases_mysql_instance_backups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesMysqlInstanceBackups200Response>, Integer, Hash)> get_databases_mysql_instance_backups_with_http_info(api_version, instance_id, opts)

```ruby
begin
  # List managed MySQL database backups
  data, status_code, headers = api_instance.get_databases_mysql_instance_backups_with_http_info(api_version, instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesMysqlInstanceBackups200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instance_backups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetDatabasesMysqlInstanceBackups200Response**](GetDatabasesMysqlInstanceBackups200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_mysql_instance_credentials

> <GetDatabasesPostgreSqlInstanceCredentials200Response> get_databases_mysql_instance_credentials(api_version, instance_id)

Get managed MySQL database credentials

__This operation is currently only available for customers who already have an active Managed Database.__  Display the root username and password for an accessible Managed MySQL Database.  The Database must have an `active` status to perform this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-creds-view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.

begin
  # Get managed MySQL database credentials
  result = api_instance.get_databases_mysql_instance_credentials(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instance_credentials: #{e}"
end
```

#### Using the get_databases_mysql_instance_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesPostgreSqlInstanceCredentials200Response>, Integer, Hash)> get_databases_mysql_instance_credentials_with_http_info(api_version, instance_id)

```ruby
begin
  # Get managed MySQL database credentials
  data, status_code, headers = api_instance.get_databases_mysql_instance_credentials_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesPostgreSqlInstanceCredentials200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instance_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |

### Return type

[**GetDatabasesPostgreSqlInstanceCredentials200Response**](GetDatabasesPostgreSqlInstanceCredentials200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_mysql_instance_ssl

> <GetDatabasesPostgresqlInstanceSsl200Response> get_databases_mysql_instance_ssl(api_version, instance_id)

Get a managed MySQL database SSL certificate

__This operation is currently only available for customers who already have an active Managed Database.__  Display the SSL CA certificate for an accessible Managed MySQL Database.  The Database must have an `active` status to perform this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-ssl-cert 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed MySQL Database.

begin
  # Get a managed MySQL database SSL certificate
  result = api_instance.get_databases_mysql_instance_ssl(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instance_ssl: #{e}"
end
```

#### Using the get_databases_mysql_instance_ssl_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesPostgresqlInstanceSsl200Response>, Integer, Hash)> get_databases_mysql_instance_ssl_with_http_info(api_version, instance_id)

```ruby
begin
  # Get a managed MySQL database SSL certificate
  data, status_code, headers = api_instance.get_databases_mysql_instance_ssl_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesPostgresqlInstanceSsl200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instance_ssl_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed MySQL Database. |  |

### Return type

[**GetDatabasesPostgresqlInstanceSsl200Response**](GetDatabasesPostgresqlInstanceSsl200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_mysql_instances

> <GetDatabasesMysqlInstances200Response> get_databases_mysql_instances(api_version, opts)

List managed MySQL databases

__This operation is currently only available for customers who already have an active Managed Database.__  Display all accessible Managed MySQL Databases.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List managed MySQL databases
  result = api_instance.get_databases_mysql_instances(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instances: #{e}"
end
```

#### Using the get_databases_mysql_instances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesMysqlInstances200Response>, Integer, Hash)> get_databases_mysql_instances_with_http_info(api_version, opts)

```ruby
begin
  # List managed MySQL databases
  data, status_code, headers = api_instance.get_databases_mysql_instances_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesMysqlInstances200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_mysql_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetDatabasesMysqlInstances200Response**](GetDatabasesMysqlInstances200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_postgre_sql_instance

> <GetDatabasesPostgreSqlInstance200Response> get_databases_postgre_sql_instance(api_version, instance_id)

Get a managed PostgreSQL database

__This operation is currently only available for customers who already have an active Managed Database.__  Display information for a single, accessible Managed PostgreSQL Database.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.

begin
  # Get a managed PostgreSQL database
  result = api_instance.get_databases_postgre_sql_instance(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgre_sql_instance: #{e}"
end
```

#### Using the get_databases_postgre_sql_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesPostgreSqlInstance200Response>, Integer, Hash)> get_databases_postgre_sql_instance_with_http_info(api_version, instance_id)

```ruby
begin
  # Get a managed PostgreSQL database
  data, status_code, headers = api_instance.get_databases_postgre_sql_instance_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesPostgreSqlInstance200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgre_sql_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |

### Return type

[**GetDatabasesPostgreSqlInstance200Response**](GetDatabasesPostgreSqlInstance200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_postgre_sql_instance_backups

> <GetDatabasesPostgreSqlInstanceBackups200Response> get_databases_postgre_sql_instance_backups(api_version, instance_id, opts)

List managed PostgreSQL database backups

__This operation is currently only available for customers who already have an active Managed Database.__  Display all backups for an accessible Managed PostgreSQL Database.  The Database must not be provisioning to perform this operation.  Database `auto` type backups are created every 24 hours at 0:00 UTC. Each `auto` backup is retained for 7 days.  Database `snapshot` type backups are created by accessing the [Create a managed PostgreSQL database backup snapshot](https://techdocs.akamai.com/linode-api/reference/post-databases-postgre-sql-instance-backup) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-backups-list 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List managed PostgreSQL database backups
  result = api_instance.get_databases_postgre_sql_instance_backups(api_version, instance_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgre_sql_instance_backups: #{e}"
end
```

#### Using the get_databases_postgre_sql_instance_backups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesPostgreSqlInstanceBackups200Response>, Integer, Hash)> get_databases_postgre_sql_instance_backups_with_http_info(api_version, instance_id, opts)

```ruby
begin
  # List managed PostgreSQL database backups
  data, status_code, headers = api_instance.get_databases_postgre_sql_instance_backups_with_http_info(api_version, instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesPostgreSqlInstanceBackups200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgre_sql_instance_backups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetDatabasesPostgreSqlInstanceBackups200Response**](GetDatabasesPostgreSqlInstanceBackups200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_postgre_sql_instance_credentials

> <GetDatabasesPostgreSqlInstanceCredentials200Response> get_databases_postgre_sql_instance_credentials(api_version, instance_id)

Get managed PostgreSQL database credentials

__This operation is currently only available for customers who already have an active Managed Database.__  Display the root username and password for an accessible Managed PostgreSQL Database.  The Database must have an `active` status to perform this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-creds-view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.

begin
  # Get managed PostgreSQL database credentials
  result = api_instance.get_databases_postgre_sql_instance_credentials(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgre_sql_instance_credentials: #{e}"
end
```

#### Using the get_databases_postgre_sql_instance_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesPostgreSqlInstanceCredentials200Response>, Integer, Hash)> get_databases_postgre_sql_instance_credentials_with_http_info(api_version, instance_id)

```ruby
begin
  # Get managed PostgreSQL database credentials
  data, status_code, headers = api_instance.get_databases_postgre_sql_instance_credentials_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesPostgreSqlInstanceCredentials200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgre_sql_instance_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |

### Return type

[**GetDatabasesPostgreSqlInstanceCredentials200Response**](GetDatabasesPostgreSqlInstanceCredentials200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_postgre_sql_instances

> <GetDatabasesPostgreSqlInstances200Response> get_databases_postgre_sql_instances(api_version, opts)

List managed PostgreSQL databases

__This operation is currently only available for customers who already have an active Managed Database.__  Display all accessible Managed PostgreSQL Databases.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List managed PostgreSQL databases
  result = api_instance.get_databases_postgre_sql_instances(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgre_sql_instances: #{e}"
end
```

#### Using the get_databases_postgre_sql_instances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesPostgreSqlInstances200Response>, Integer, Hash)> get_databases_postgre_sql_instances_with_http_info(api_version, opts)

```ruby
begin
  # List managed PostgreSQL databases
  data, status_code, headers = api_instance.get_databases_postgre_sql_instances_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesPostgreSqlInstances200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgre_sql_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetDatabasesPostgreSqlInstances200Response**](GetDatabasesPostgreSqlInstances200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_postgresql_instance_backup

> <GetDatabasesPostgresqlInstanceBackup200Response> get_databases_postgresql_instance_backup(api_version, instance_id, backup_id)

Get a managed PostgreSQL database backup

__This operation is currently only available for customers who already have an active Managed Database.__  Display information for a single backup for an accessible Managed PostgreSQL Database.  The Database must not be provisioning to perform this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-backup-view 123 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.
backup_id = 56 # Integer | The ID of the Managed PostgreSQL Database backup.

begin
  # Get a managed PostgreSQL database backup
  result = api_instance.get_databases_postgresql_instance_backup(api_version, instance_id, backup_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgresql_instance_backup: #{e}"
end
```

#### Using the get_databases_postgresql_instance_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesPostgresqlInstanceBackup200Response>, Integer, Hash)> get_databases_postgresql_instance_backup_with_http_info(api_version, instance_id, backup_id)

```ruby
begin
  # Get a managed PostgreSQL database backup
  data, status_code, headers = api_instance.get_databases_postgresql_instance_backup_with_http_info(api_version, instance_id, backup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesPostgresqlInstanceBackup200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgresql_instance_backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |
| **backup_id** | **Integer** | The ID of the Managed PostgreSQL Database backup. |  |

### Return type

[**GetDatabasesPostgresqlInstanceBackup200Response**](GetDatabasesPostgresqlInstanceBackup200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_postgresql_instance_ssl

> <GetDatabasesPostgresqlInstanceSsl200Response> get_databases_postgresql_instance_ssl(api_version, instance_id)

Get a managed PostgreSQL database SSL certificate

__This operation is currently only available for customers who already have an active Managed Database.__  Display the SSL CA certificate for an accessible Managed PostgreSQL Database.  The Database must have an `active` status to perform this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-ssl-cert 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.

begin
  # Get a managed PostgreSQL database SSL certificate
  result = api_instance.get_databases_postgresql_instance_ssl(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgresql_instance_ssl: #{e}"
end
```

#### Using the get_databases_postgresql_instance_ssl_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesPostgresqlInstanceSsl200Response>, Integer, Hash)> get_databases_postgresql_instance_ssl_with_http_info(api_version, instance_id)

```ruby
begin
  # Get a managed PostgreSQL database SSL certificate
  data, status_code, headers = api_instance.get_databases_postgresql_instance_ssl_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesPostgresqlInstanceSsl200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_postgresql_instance_ssl_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |

### Return type

[**GetDatabasesPostgresqlInstanceSsl200Response**](GetDatabasesPostgresqlInstanceSsl200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_type

> <GetDatabasesType200Response> get_databases_type(api_version, type_id, opts)

Get a managed database type

__This operation is currently only available for customers who already have an active Managed Database.__  Display the details of a single Managed Database type. The type and number of nodes determine the resources and price of a Managed Database instance.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases type-view     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
type_id = 'type_id_example' # String | The ID of the Managed Database type.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # Get a managed database type
  result = api_instance.get_databases_type(api_version, type_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_type: #{e}"
end
```

#### Using the get_databases_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesType200Response>, Integer, Hash)> get_databases_type_with_http_info(api_version, type_id, opts)

```ruby
begin
  # Get a managed database type
  data, status_code, headers = api_instance.get_databases_type_with_http_info(api_version, type_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesType200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **type_id** | **String** | The ID of the Managed Database type. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetDatabasesType200Response**](GetDatabasesType200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_databases_types

> <GetDatabasesTypes200Response> get_databases_types(api_version, opts)

List managed database types

__This operation is currently only available for customers who already have an active Managed Database.__  Display all Managed Database node types. The type and number of nodes determine the resources and price of a Managed Database instance.  Each Managed Database can have one node type. In the case of a high availability Database, all nodes are provisioned according to the chosen type.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases types     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List managed database types
  result = api_instance.get_databases_types(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_types: #{e}"
end
```

#### Using the get_databases_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDatabasesTypes200Response>, Integer, Hash)> get_databases_types_with_http_info(api_version, opts)

```ruby
begin
  # List managed database types
  data, status_code, headers = api_instance.get_databases_types_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDatabasesTypes200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->get_databases_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetDatabasesTypes200Response**](GetDatabasesTypes200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_databases_mysql_instance_backup

> Object post_databases_mysql_instance_backup(api_version, instance_id, opts)

Create a managed MySQL database backup snapshot

__This operation is currently only available for customers who already have an active Managed Database.__  Creates a snapshot backup of a Managed MySQL Database.  Requires `read_write` access to the Database.  Up to 3 snapshot backups for each Database can be stored at a time. If 3 snapshots have been created for a Database, one must be deleted before another can be made.  Backups generated by this operation have the type `snapshot`. Snapshot backups may take several minutes to complete, after which they will be accessible to view or restore.  The Database must have an `active` status to perform this operation. If another backup is in progress, it must complete before a new backup can be initiated.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-backup-snapshot 123 \\   --label snapshot1 \\   --target primary     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.
opts = {
  post_databases_mysql_instance_backup_request: LinodeOpenapiClient::PostDatabasesMysqlInstanceBackupRequest.new({label: 'db-snapshot'}) # PostDatabasesMysqlInstanceBackupRequest | Information about the snapshot backup to create.
}

begin
  # Create a managed MySQL database backup snapshot
  result = api_instance.post_databases_mysql_instance_backup(api_version, instance_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_mysql_instance_backup: #{e}"
end
```

#### Using the post_databases_mysql_instance_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_databases_mysql_instance_backup_with_http_info(api_version, instance_id, opts)

```ruby
begin
  # Create a managed MySQL database backup snapshot
  data, status_code, headers = api_instance.post_databases_mysql_instance_backup_with_http_info(api_version, instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_mysql_instance_backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |
| **post_databases_mysql_instance_backup_request** | [**PostDatabasesMysqlInstanceBackupRequest**](PostDatabasesMysqlInstanceBackupRequest.md) | Information about the snapshot backup to create. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_databases_mysql_instance_backup_restore

> Object post_databases_mysql_instance_backup_restore(api_version, instance_id, backup_id)

Restore a managed MySQL database backup

__This operation is currently only available for customers who already have an active Managed Database.__  Restore a backup to a Managed MySQL Database on your Account.  Requires `read_write` access to the Database.  The Database must have an `active`, `degraded`, or `failed` status to perform this operation.  __Note__. Restoring from a backup will erase all existing data on the database instance and replace it with backup data.  __Note__. Currently, restoring a backup after resetting Managed Database credentials results in a failed cluster. Please contact Customer Support if this occurs.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-backup-restore 123 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed MySQL Database.
backup_id = 56 # Integer | The ID of the Managed MySQL Database backup.

begin
  # Restore a managed MySQL database backup
  result = api_instance.post_databases_mysql_instance_backup_restore(api_version, instance_id, backup_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_mysql_instance_backup_restore: #{e}"
end
```

#### Using the post_databases_mysql_instance_backup_restore_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_databases_mysql_instance_backup_restore_with_http_info(api_version, instance_id, backup_id)

```ruby
begin
  # Restore a managed MySQL database backup
  data, status_code, headers = api_instance.post_databases_mysql_instance_backup_restore_with_http_info(api_version, instance_id, backup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_mysql_instance_backup_restore_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed MySQL Database. |  |
| **backup_id** | **Integer** | The ID of the Managed MySQL Database backup. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_databases_mysql_instance_credentials_reset

> Object post_databases_mysql_instance_credentials_reset(api_version, instance_id)

Reset managed MySQL database credentials

__This operation is currently only available for customers who already have an active Managed Database.__  Reset the root password for a Managed MySQL Database.  Requires `read_write` access to the Database.  A new root password is randomly generated and accessible with the [Get managed MySQL database credentials](https://techdocs.akamai.com/linode-api/reference/get-databases-mysql-instance-credentials) operation.  Only unrestricted Users can access this operation, and have access regardless of the acting token's OAuth scopes.  __Note__. It may take several seconds for credentials to reset.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-creds-reset 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed MySQL Database.

begin
  # Reset managed MySQL database credentials
  result = api_instance.post_databases_mysql_instance_credentials_reset(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_mysql_instance_credentials_reset: #{e}"
end
```

#### Using the post_databases_mysql_instance_credentials_reset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_databases_mysql_instance_credentials_reset_with_http_info(api_version, instance_id)

```ruby
begin
  # Reset managed MySQL database credentials
  data, status_code, headers = api_instance.post_databases_mysql_instance_credentials_reset_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_mysql_instance_credentials_reset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed MySQL Database. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_databases_mysql_instance_patch

> Object post_databases_mysql_instance_patch(api_version, instance_id)

Patch a managed MySQL database

__This operation is currently only available for customers who already have an active Managed Database.__  Apply security patches and updates to the underlying operating system of the Managed MySQL Database. This function runs during regular maintenance windows, which are configurable with the [Update a managed MySQL database](https://techdocs.akamai.com/linode-api/reference/put-databases-mysql-instance) operation.  Requires `read_write` access to the Database.  The Database must have an `active` status to perform this operation.  __Note__  - If your database cluster is configured with a single node, you will experience downtime during this maintenance. Consider upgrading to a high availability plan to avoid any downtime due to maintenance.  - __The database software is not updated automatically.__ To upgrade to a new database engine version, consider deploying a new Managed Database with your preferred version. You can then [migrate your databases](https://www.linode.com/docs/products/databases/managed-databases/guides/migrate-mysql/) from the original Managed Database cluster to the new one.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-patch 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.

begin
  # Patch a managed MySQL database
  result = api_instance.post_databases_mysql_instance_patch(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_mysql_instance_patch: #{e}"
end
```

#### Using the post_databases_mysql_instance_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_databases_mysql_instance_patch_with_http_info(api_version, instance_id)

```ruby
begin
  # Patch a managed MySQL database
  data, status_code, headers = api_instance.post_databases_mysql_instance_patch_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_mysql_instance_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_databases_mysql_instances

> <PostDatabasesMysqlInstances200Response> post_databases_mysql_instances(api_version, post_databases_mysql_instances_request)

Create a managed MySQL database

__This operation is currently only available for customers who already have an active Managed Database.__  Provision a Managed MySQL Database.  Restricted Users must have the `add_databases` grant to use this operation.  New instances can take approximately 15 to 30 minutes to provision.  The `allow_list` is used to control access to the Managed Database.  - IP addresses and ranges in this list can access the Managed Database. All other sources are blocked.  - If `0.0.0.0/0` is a value in this list, then all IP addresses can access the Managed Database.  - Entering an empty array (`[]`) blocks all connections (both public and private) to the Managed Database.  All Managed Databases include automatic, daily backups. Up to seven backups are automatically stored for each Managed Database, providing restore points for each day of the past week.  All Managed Databases include automatic patch updates, which apply security patches and updates to the underlying operating system of the Managed MySQL Database during configurable maintenance windows.  - If your database cluster is configured with a single node, you will experience downtime during this maintenance window when any updates occur. It's recommended that you adjust this window to match a time that will be the least disruptive for your application and users. You may also want to consider upgrading to a high availability plan to avoid any downtime due to maintenance.  - __The database software is not updated automatically.__ To upgrade to a new database engine version, consider deploying a new Managed Database with your preferred version. You can then [migrate your databases](https://www.linode.com/docs/products/databases/managed-databases/guides/migrate-mysql/) from the original Managed Database cluster to the new one.  - To modify update the maintenance window for a Database, run the [Update a managed MySQL database](https://techdocs.akamai.com/linode-api/reference/put-databases-mysql-instance) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-create \\   --label example-db1 \\   --region us-east \\   --type g6-dedicated-2 \\   --cluster_size 3 \\   --engine mysql/8.0.26 \\   --encrypted false \\   --ssl_connection false \\   --replication_type semi_synch \\   --allow_list 203.0.113.1 \\   --allow_list 192.0.1.0/24     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_databases_mysql_instances_request = LinodeOpenapiClient::PostDatabasesMysqlInstancesRequest.new({type: 'g6-dedicated-2', label: 'example-db', region: 'us-east', engine: 'mysql/8.0.26'}) # PostDatabasesMysqlInstancesRequest | Information about the Managed MySQL Database you are creating.

begin
  # Create a managed MySQL database
  result = api_instance.post_databases_mysql_instances(api_version, post_databases_mysql_instances_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_mysql_instances: #{e}"
end
```

#### Using the post_databases_mysql_instances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostDatabasesMysqlInstances200Response>, Integer, Hash)> post_databases_mysql_instances_with_http_info(api_version, post_databases_mysql_instances_request)

```ruby
begin
  # Create a managed MySQL database
  data, status_code, headers = api_instance.post_databases_mysql_instances_with_http_info(api_version, post_databases_mysql_instances_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostDatabasesMysqlInstances200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_mysql_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_databases_mysql_instances_request** | [**PostDatabasesMysqlInstancesRequest**](PostDatabasesMysqlInstancesRequest.md) | Information about the Managed MySQL Database you are creating. |  |

### Return type

[**PostDatabasesMysqlInstances200Response**](PostDatabasesMysqlInstances200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_databases_postgre_sql_instance_backup

> Object post_databases_postgre_sql_instance_backup(api_version, instance_id, opts)

Create a managed PostgreSQL database backup snapshot

__This operation is currently only available for customers who already have an active Managed Database.__  Creates a snapshot backup of a Managed PostgreSQL Database.  Requires `read_write` access to the Database.  Up to 3 snapshot backups for each Database can be stored at a time. If 3 snapshots have been created for a Database, one must be deleted before another can be made.  Backups generated by this operation have the type `snapshot`. Snapshot backups may take several minutes to complete, after which they will be accessible to view or restore.  The Database must have an `active` status to perform this operation. If another backup is in progress, it must complete before a new backup can be initiated.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-backup-snapshot 123 \\   --label snapshot1 \\   --target primary     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.
opts = {
  post_databases_postgre_sql_instance_backup_request: LinodeOpenapiClient::PostDatabasesPostgreSqlInstanceBackupRequest.new({label: 'db-snapshot'}) # PostDatabasesPostgreSqlInstanceBackupRequest | Information about the snapshot backup to create.
}

begin
  # Create a managed PostgreSQL database backup snapshot
  result = api_instance.post_databases_postgre_sql_instance_backup(api_version, instance_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_postgre_sql_instance_backup: #{e}"
end
```

#### Using the post_databases_postgre_sql_instance_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_databases_postgre_sql_instance_backup_with_http_info(api_version, instance_id, opts)

```ruby
begin
  # Create a managed PostgreSQL database backup snapshot
  data, status_code, headers = api_instance.post_databases_postgre_sql_instance_backup_with_http_info(api_version, instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_postgre_sql_instance_backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |
| **post_databases_postgre_sql_instance_backup_request** | [**PostDatabasesPostgreSqlInstanceBackupRequest**](PostDatabasesPostgreSqlInstanceBackupRequest.md) | Information about the snapshot backup to create. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_databases_postgre_sql_instance_backup_restore

> Object post_databases_postgre_sql_instance_backup_restore(api_version, instance_id, backup_id)

Restore a managed PostgreSQL database backup

__This operation is currently only available for customers who already have an active Managed Database.__  Restore a backup to a Managed PostgreSQL Database on your Account.  Requires `read_write` access to the Database.  The Database must have an `active`, `degraded`, or `failed` status to perform this operation.  __Note__. Restoring from a backup will erase all existing data on the database instance and replace it with backup data.  __Note__. Currently, restoring a backup after resetting Managed Database credentials results in a failed cluster. Please contact Customer Support if this occurs.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-backup-restore 123 456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.
backup_id = 56 # Integer | The ID of the Managed PostgreSQL Database backup.

begin
  # Restore a managed PostgreSQL database backup
  result = api_instance.post_databases_postgre_sql_instance_backup_restore(api_version, instance_id, backup_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_postgre_sql_instance_backup_restore: #{e}"
end
```

#### Using the post_databases_postgre_sql_instance_backup_restore_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_databases_postgre_sql_instance_backup_restore_with_http_info(api_version, instance_id, backup_id)

```ruby
begin
  # Restore a managed PostgreSQL database backup
  data, status_code, headers = api_instance.post_databases_postgre_sql_instance_backup_restore_with_http_info(api_version, instance_id, backup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_postgre_sql_instance_backup_restore_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |
| **backup_id** | **Integer** | The ID of the Managed PostgreSQL Database backup. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_databases_postgre_sql_instance_credentials_reset

> Object post_databases_postgre_sql_instance_credentials_reset(api_version, instance_id)

Reset managed PostgreSQL database credentials

__This operation is currently only available for customers who already have an active Managed Database.__  Reset the root password for a Managed PostgreSQL Database.  Requires `read_write` access to the Database.  A new root password is randomly generated and accessible with the [Get managed PostgreSQL database credentials](https://techdocs.akamai.com/linode-api/reference/get-databases-postgre-sql-instance-credentials) operation.  Only unrestricted Users can access this operation, and have access regardless of the acting token's OAuth scopes.  __Note__. It may take several seconds for credentials to reset.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-creds-reset 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.

begin
  # Reset managed PostgreSQL database credentials
  result = api_instance.post_databases_postgre_sql_instance_credentials_reset(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_postgre_sql_instance_credentials_reset: #{e}"
end
```

#### Using the post_databases_postgre_sql_instance_credentials_reset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_databases_postgre_sql_instance_credentials_reset_with_http_info(api_version, instance_id)

```ruby
begin
  # Reset managed PostgreSQL database credentials
  data, status_code, headers = api_instance.post_databases_postgre_sql_instance_credentials_reset_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_postgre_sql_instance_credentials_reset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_databases_postgre_sql_instance_patch

> Object post_databases_postgre_sql_instance_patch(api_version, instance_id)

Patch a managed PostgreSQL database

__This operation is currently only available for customers who already have an active Managed Database.__  Apply security patches and updates to the underlying operating system of the Managed PostgreSQL Database. This function runs during regular maintenance windows, which are configurable with the [Update a managed PostgreSQL database](https://techdocs.akamai.com/linode-api/reference/put-databases-postgre-sql-instance) operation.  Requires `read_write` access to the Database.  The Database must have an `active` status to perform this operation.  __Note__  - If your database cluster is configured with a single node, you will experience downtime during this maintenance. Consider upgrading to a high availability plan to avoid any downtime due to maintenance.  - __The database software is not updated automatically.__ To upgrade to a new database engine version, consider deploying a new Managed Database with your preferred version. You can then migrate your databases from the original Managed Database cluster to the new one.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-patch 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.

begin
  # Patch a managed PostgreSQL database
  result = api_instance.post_databases_postgre_sql_instance_patch(api_version, instance_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_postgre_sql_instance_patch: #{e}"
end
```

#### Using the post_databases_postgre_sql_instance_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_databases_postgre_sql_instance_patch_with_http_info(api_version, instance_id)

```ruby
begin
  # Patch a managed PostgreSQL database
  data, status_code, headers = api_instance.post_databases_postgre_sql_instance_patch_with_http_info(api_version, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_postgre_sql_instance_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_databases_postgre_sql_instances

> <PostDatabasesPostgreSqlInstances200Response> post_databases_postgre_sql_instances(api_version, post_databases_postgre_sql_instances_request)

Create a managed PostgreSQL database

__This operation is currently only available for customers who already have an active Managed Database.__  Provision a Managed PostgreSQL Database.  Restricted Users must have the `add_databases` grant to use this operation.  New instances can take approximately 15 to 30 minutes to provision.  The `allow_list` is used to control access to the Managed Database.  - IP addresses and ranges in this list can access the Managed Database. All other sources are blocked.  - If `0.0.0.0/0` is a value in this list, then all IP addresses can access the Managed Database.  - Entering an empty array (`[]`) blocks all connections (both public and private) to the Managed Database.  All Managed Databases include automatic, daily backups. Up to seven backups are automatically stored for each Managed Database, providing restore points for each day of the past week.  All Managed Databases include automatic patch updates, which apply security patches and updates to the underlying operating system of the Managed PostgreSQL Database during configurable maintenance windows.  - If your database cluster is configured with a single node, you will experience downtime during this maintenance window when any updates occur. It's recommended that you adjust this window to match a time that will be the least disruptive for your application and users. You may also want to consider upgrading to a high availability plan to avoid any downtime due to maintenance.  - __The database software is not updated automatically.__ To upgrade to a new database engine version, consider deploying a new Managed Database with your preferred version. You can then migrate your databases from the original Managed Database cluster to the new one.  - To modify update the maintenance window for a Database, run the [Update a managed PostgreSQL database](https://techdocs.akamai.com/linode-api/reference/put-databases-postgre-sql-instance) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-create \\   --label example-db \\   --region us-east \\   --type g6-dedicated-2 \\   --cluster_size 3 \\   --engine postgresql/13.2 \\   --encrypted false \\   --ssl_connection false \\   --replication_type asynch \\   --replication_commit_type local \\   --allow_list 203.0.113.1 \\   --allow_list 192.0.1.0/24     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_databases_postgre_sql_instances_request = LinodeOpenapiClient::PostDatabasesPostgreSqlInstancesRequest.new({region: 'us-east', engine: 'postgresql/13.2', type: 'g6-dedicated-2', label: 'example-db'}) # PostDatabasesPostgreSqlInstancesRequest | Information about the Managed PostgreSQL Database you are creating.

begin
  # Create a managed PostgreSQL database
  result = api_instance.post_databases_postgre_sql_instances(api_version, post_databases_postgre_sql_instances_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_postgre_sql_instances: #{e}"
end
```

#### Using the post_databases_postgre_sql_instances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostDatabasesPostgreSqlInstances200Response>, Integer, Hash)> post_databases_postgre_sql_instances_with_http_info(api_version, post_databases_postgre_sql_instances_request)

```ruby
begin
  # Create a managed PostgreSQL database
  data, status_code, headers = api_instance.post_databases_postgre_sql_instances_with_http_info(api_version, post_databases_postgre_sql_instances_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostDatabasesPostgreSqlInstances200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->post_databases_postgre_sql_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_databases_postgre_sql_instances_request** | [**PostDatabasesPostgreSqlInstancesRequest**](PostDatabasesPostgreSqlInstancesRequest.md) | Information about the Managed PostgreSQL Database you are creating. |  |

### Return type

[**PostDatabasesPostgreSqlInstances200Response**](PostDatabasesPostgreSqlInstances200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_databases_mysql_instance

> <PutDatabasesMysqlInstance200Response> put_databases_mysql_instance(api_version, instance_id, put_databases_mysql_instance_request)

Update a managed MySQL database

__This operation is currently only available for customers who already have an active Managed Database.__  Update a Managed MySQL Database.  Requires `read_write` access to the Database.  The Database must have an `active` status to perform this operation.  Updating addresses in the `allow_list` overwrites any existing addresses.  - IP addresses and ranges in this list can access the Managed Database. All other sources are blocked.  - If `0.0.0.0/0` is a value in this list, then all IP addresses can access the Managed Database.  - Entering an empty array (`[]`) blocks all connections (both public and private) to the Managed Database.  - __Note__. Updates to the `allow_list` may take a short period of time to complete, making this operation inappropriate for rapid successive updates to this property.  All Managed Databases include automatic patch updates, which apply security patches and updates to the underlying operating system of the Managed MySQL Database. The maintenance window for these updates is configured with the Managed Database's `updates` property.  - If your database cluster is configured with a single node, you will experience downtime during this maintenance window when any updates occur. It's recommended that you adjust this window to match a time that will be the least disruptive for your application and users. You may also want to consider upgrading to a high availability plan to avoid any downtime due to maintenance.  - __The database software is not updated automatically.__ To upgrade to a new database engine version, consider deploying a new Managed Database with your preferred version. You can then [migrate your databases](https://www.linode.com/docs/products/databases/managed-databases/guides/migrate-mysql/) from the original Managed Database cluster to the new one.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases mysql-update 123 \\   --label example-db \\   --allow_list 203.0.113.1 \\   --allow_list 192.0.1.0/24 \\   --type g6-standard-1 \\   --updates.frequency monthly \\   --updates.duration 3 \\   --updates.hour_of_day 12 \\   --updates.day_of_week 4 \\   --updates.week_of_month 3     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.
put_databases_mysql_instance_request = LinodeOpenapiClient::PutDatabasesMysqlInstanceRequest.new # PutDatabasesMysqlInstanceRequest | Updated information for the Managed MySQL Database.

begin
  # Update a managed MySQL database
  result = api_instance.put_databases_mysql_instance(api_version, instance_id, put_databases_mysql_instance_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->put_databases_mysql_instance: #{e}"
end
```

#### Using the put_databases_mysql_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutDatabasesMysqlInstance200Response>, Integer, Hash)> put_databases_mysql_instance_with_http_info(api_version, instance_id, put_databases_mysql_instance_request)

```ruby
begin
  # Update a managed MySQL database
  data, status_code, headers = api_instance.put_databases_mysql_instance_with_http_info(api_version, instance_id, put_databases_mysql_instance_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutDatabasesMysqlInstance200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->put_databases_mysql_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |
| **put_databases_mysql_instance_request** | [**PutDatabasesMysqlInstanceRequest**](PutDatabasesMysqlInstanceRequest.md) | Updated information for the Managed MySQL Database. |  |

### Return type

[**PutDatabasesMysqlInstance200Response**](PutDatabasesMysqlInstance200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_databases_postgre_sql_instance

> <PutDatabasesPostgreSqlInstance200Response> put_databases_postgre_sql_instance(api_version, instance_id, put_databases_postgre_sql_instance_request)

Update a managed PostgreSQL database

__This operation is currently only available for customers who already have an active Managed Database.__  Update a Managed PostgreSQL Database.  Requires `read_write` access to the Database.  The Database must have an `active` status to perform this operation.  Updating addresses in the `allow_list` overwrites any existing addresses.  - IP addresses and ranges in this list can access the Managed Database. All other sources are blocked.  - If `0.0.0.0/0` is a value in this list, then all IP addresses can access the Managed Database.  - Entering an empty array (`[]`) blocks all connections (both public and private) to the Managed Database.  - __Note__. Updates to the `allow_list` may take a short period of time to complete, making this operation inappropriate for rapid successive updates to this property.  All Managed Databases include automatic patch updates, which apply security patches and updates to the underlying operating system of the Managed PostgreSQL Database. The maintenance window for these updates is configured with the Managed Database's `updates` property.  - If your database cluster is configured with a single node, you will experience downtime during this maintenance window when any updates occur. It's recommended that you adjust this window to match a time that will be the least disruptive for your application and users. You may also want to consider upgrading to a high availability plan to avoid any downtime due to maintenance.  - __The database software is not updated automatically.__ To upgrade to a new database engine version, consider deploying a new Managed Database with your preferred version. You can then migrate your databases from the original Managed Database cluster to the new one.   <<LB>>  ---   - __CLI__.      ```     linode-cli databases postgresql-update 123 \\   --label example-db \\   --allow_list 203.0.113.1 \\   --allow_list 192.0.1.0/24 \\   --type g6-standard-1 \\   --updates.frequency monthly \\   --updates.duration 3 \\   --updates.hour_of_day 12 \\   --updates.day_of_week 4 \\   --updates.week_of_month 3     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     databases:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::DatabasesApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
instance_id = 56 # Integer | The ID of the Managed PostgreSQL Database.
put_databases_postgre_sql_instance_request = LinodeOpenapiClient::PutDatabasesPostgreSqlInstanceRequest.new # PutDatabasesPostgreSqlInstanceRequest | Updated information for the Managed PostgreSQL Database.

begin
  # Update a managed PostgreSQL database
  result = api_instance.put_databases_postgre_sql_instance(api_version, instance_id, put_databases_postgre_sql_instance_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->put_databases_postgre_sql_instance: #{e}"
end
```

#### Using the put_databases_postgre_sql_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutDatabasesPostgreSqlInstance200Response>, Integer, Hash)> put_databases_postgre_sql_instance_with_http_info(api_version, instance_id, put_databases_postgre_sql_instance_request)

```ruby
begin
  # Update a managed PostgreSQL database
  data, status_code, headers = api_instance.put_databases_postgre_sql_instance_with_http_info(api_version, instance_id, put_databases_postgre_sql_instance_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutDatabasesPostgreSqlInstance200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling DatabasesApi->put_databases_postgre_sql_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **instance_id** | **Integer** | The ID of the Managed PostgreSQL Database. |  |
| **put_databases_postgre_sql_instance_request** | [**PutDatabasesPostgreSqlInstanceRequest**](PutDatabasesPostgreSqlInstanceRequest.md) | Updated information for the Managed PostgreSQL Database. |  |

### Return type

[**PutDatabasesPostgreSqlInstance200Response**](PutDatabasesPostgreSqlInstance200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

