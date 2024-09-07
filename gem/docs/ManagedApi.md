# LinodeOpenapiClient::ManagedApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_managed_contact**](ManagedApi.md#delete_managed_contact) | **DELETE** /{apiVersion}/managed/contacts/{contactId} | Delete a managed contact |
| [**delete_managed_service**](ManagedApi.md#delete_managed_service) | **DELETE** /{apiVersion}/managed/services/{serviceId} | Delete a managed service |
| [**get_managed_contact**](ManagedApi.md#get_managed_contact) | **GET** /{apiVersion}/managed/contacts/{contactId} | Get a managed contact |
| [**get_managed_contacts**](ManagedApi.md#get_managed_contacts) | **GET** /{apiVersion}/managed/contacts | List managed contacts |
| [**get_managed_credential**](ManagedApi.md#get_managed_credential) | **GET** /{apiVersion}/managed/credentials/{credentialId} | Get a managed credential |
| [**get_managed_credentials**](ManagedApi.md#get_managed_credentials) | **GET** /{apiVersion}/managed/credentials | List managed credentials |
| [**get_managed_issue**](ManagedApi.md#get_managed_issue) | **GET** /{apiVersion}/managed/issues/{issueId} | Get a managed issue |
| [**get_managed_issues**](ManagedApi.md#get_managed_issues) | **GET** /{apiVersion}/managed/issues | List managed issues |
| [**get_managed_linode_setting**](ManagedApi.md#get_managed_linode_setting) | **GET** /{apiVersion}/managed/linode-settings/{linodeId} | Get a Linode&#39;s managed settings |
| [**get_managed_linode_settings**](ManagedApi.md#get_managed_linode_settings) | **GET** /{apiVersion}/managed/linode-settings | List managed Linode settings |
| [**get_managed_service**](ManagedApi.md#get_managed_service) | **GET** /{apiVersion}/managed/services/{serviceId} | Get a managed service |
| [**get_managed_services**](ManagedApi.md#get_managed_services) | **GET** /{apiVersion}/managed/services | List managed services |
| [**get_managed_ssh_key**](ManagedApi.md#get_managed_ssh_key) | **GET** /{apiVersion}/managed/credentials/sshkey | Get a managed SSH key |
| [**get_managed_stats**](ManagedApi.md#get_managed_stats) | **GET** /{apiVersion}/managed/stats | List managed stats |
| [**post_disable_managed_service**](ManagedApi.md#post_disable_managed_service) | **POST** /{apiVersion}/managed/services/{serviceId}/disable | Disable a managed service |
| [**post_enable_managed_service**](ManagedApi.md#post_enable_managed_service) | **POST** /{apiVersion}/managed/services/{serviceId}/enable | Enable a managed service |
| [**post_managed_contact**](ManagedApi.md#post_managed_contact) | **POST** /{apiVersion}/managed/contacts | Create a managed contact |
| [**post_managed_credential**](ManagedApi.md#post_managed_credential) | **POST** /{apiVersion}/managed/credentials | Create a managed credential |
| [**post_managed_credential_revoke**](ManagedApi.md#post_managed_credential_revoke) | **POST** /{apiVersion}/managed/credentials/{credentialId}/revoke | Delete a managed credential |
| [**post_managed_credential_username_password**](ManagedApi.md#post_managed_credential_username_password) | **POST** /{apiVersion}/managed/credentials/{credentialId}/update | Update a managed credential&#39;s username and password |
| [**post_managed_service**](ManagedApi.md#post_managed_service) | **POST** /{apiVersion}/managed/services | Create a managed service |
| [**put_managed_contact**](ManagedApi.md#put_managed_contact) | **PUT** /{apiVersion}/managed/contacts/{contactId} | Update a managed contact |
| [**put_managed_credential**](ManagedApi.md#put_managed_credential) | **PUT** /{apiVersion}/managed/credentials/{credentialId} | Update a managed credential |
| [**put_managed_linode_setting**](ManagedApi.md#put_managed_linode_setting) | **PUT** /{apiVersion}/managed/linode-settings/{linodeId} | Update a Linode&#39;s managed settings |
| [**put_managed_service**](ManagedApi.md#put_managed_service) | **PUT** /{apiVersion}/managed/services/{serviceId} | Update a managed service |


## delete_managed_contact

> Object delete_managed_contact(api_version, contact_id)

Delete a managed contact

Deletes a Managed Contact.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed contact-delete 567     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
contact_id = 56 # Integer | The ID of the contact to access.

begin
  # Delete a managed contact
  result = api_instance.delete_managed_contact(api_version, contact_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->delete_managed_contact: #{e}"
end
```

#### Using the delete_managed_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_managed_contact_with_http_info(api_version, contact_id)

```ruby
begin
  # Delete a managed contact
  data, status_code, headers = api_instance.delete_managed_contact_with_http_info(api_version, contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->delete_managed_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **contact_id** | **Integer** | The ID of the contact to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_managed_service

> Object delete_managed_service(api_version, service_id)

Delete a managed service

Deletes a Managed Service.  This service will no longer be monitored by Linode Managed.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed service-delete 9994     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
service_id = 56 # Integer | The ID of the Managed Service to access.

begin
  # Delete a managed service
  result = api_instance.delete_managed_service(api_version, service_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->delete_managed_service: #{e}"
end
```

#### Using the delete_managed_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_managed_service_with_http_info(api_version, service_id)

```ruby
begin
  # Delete a managed service
  data, status_code, headers = api_instance.delete_managed_service_with_http_info(api_version, service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->delete_managed_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **service_id** | **Integer** | The ID of the Managed Service to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_contact

> <GetManagedContact200Response> get_managed_contact(api_version, contact_id)

Get a managed contact

Returns a single Managed Contact.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed contact-view 567     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
contact_id = 56 # Integer | The ID of the contact to access.

begin
  # Get a managed contact
  result = api_instance.get_managed_contact(api_version, contact_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_contact: #{e}"
end
```

#### Using the get_managed_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedContact200Response>, Integer, Hash)> get_managed_contact_with_http_info(api_version, contact_id)

```ruby
begin
  # Get a managed contact
  data, status_code, headers = api_instance.get_managed_contact_with_http_info(api_version, contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedContact200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **contact_id** | **Integer** | The ID of the contact to access. |  |

### Return type

[**GetManagedContact200Response**](GetManagedContact200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_contacts

> <GetManagedContacts200Response> get_managed_contacts(api_version, opts)

List managed contacts

Returns a paginated list of Managed Contacts on your Account.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed contacts-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List managed contacts
  result = api_instance.get_managed_contacts(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_contacts: #{e}"
end
```

#### Using the get_managed_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedContacts200Response>, Integer, Hash)> get_managed_contacts_with_http_info(api_version, opts)

```ruby
begin
  # List managed contacts
  data, status_code, headers = api_instance.get_managed_contacts_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedContacts200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetManagedContacts200Response**](GetManagedContacts200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_credential

> <GetManagedCredential200Response> get_managed_credential(api_version, credential_id)

Get a managed credential

Returns a single Managed Credential.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed credential-view 9991     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
credential_id = 56 # Integer | The ID of the Credential to access.

begin
  # Get a managed credential
  result = api_instance.get_managed_credential(api_version, credential_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_credential: #{e}"
end
```

#### Using the get_managed_credential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedCredential200Response>, Integer, Hash)> get_managed_credential_with_http_info(api_version, credential_id)

```ruby
begin
  # Get a managed credential
  data, status_code, headers = api_instance.get_managed_credential_with_http_info(api_version, credential_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedCredential200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_credential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **credential_id** | **Integer** | The ID of the Credential to access. |  |

### Return type

[**GetManagedCredential200Response**](GetManagedCredential200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_credentials

> <GetManagedCredentials200Response> get_managed_credentials(api_version, opts)

List managed credentials

Returns a paginated list of Managed Credentials on your Account.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed credentials-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List managed credentials
  result = api_instance.get_managed_credentials(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_credentials: #{e}"
end
```

#### Using the get_managed_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedCredentials200Response>, Integer, Hash)> get_managed_credentials_with_http_info(api_version, opts)

```ruby
begin
  # List managed credentials
  data, status_code, headers = api_instance.get_managed_credentials_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedCredentials200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetManagedCredentials200Response**](GetManagedCredentials200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_issue

> <GetManagedIssue200Response> get_managed_issue(api_version, issue_id)

Get a managed issue

Returns a single Issue that is impacting or did impact one of your Managed Services.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed issue-view 823     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
issue_id = 56 # Integer | The Issue to look up.

begin
  # Get a managed issue
  result = api_instance.get_managed_issue(api_version, issue_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_issue: #{e}"
end
```

#### Using the get_managed_issue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedIssue200Response>, Integer, Hash)> get_managed_issue_with_http_info(api_version, issue_id)

```ruby
begin
  # Get a managed issue
  data, status_code, headers = api_instance.get_managed_issue_with_http_info(api_version, issue_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedIssue200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_issue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **issue_id** | **Integer** | The Issue to look up. |  |

### Return type

[**GetManagedIssue200Response**](GetManagedIssue200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_issues

> <GetManagedIssues200Response> get_managed_issues(api_version, opts)

List managed issues

Returns a paginated list of recent and ongoing issues detected on your Managed Services.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed issues-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List managed issues
  result = api_instance.get_managed_issues(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_issues: #{e}"
end
```

#### Using the get_managed_issues_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedIssues200Response>, Integer, Hash)> get_managed_issues_with_http_info(api_version, opts)

```ruby
begin
  # List managed issues
  data, status_code, headers = api_instance.get_managed_issues_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedIssues200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_issues_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetManagedIssues200Response**](GetManagedIssues200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_linode_setting

> <GetManagedLinodeSetting200Response> get_managed_linode_setting(api_version, linode_id)

Get a Linode's managed settings

Returns a single Linode's Managed settings.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed linode-setting-view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The Linode ID whose settings we are accessing.

begin
  # Get a Linode's managed settings
  result = api_instance.get_managed_linode_setting(api_version, linode_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_linode_setting: #{e}"
end
```

#### Using the get_managed_linode_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedLinodeSetting200Response>, Integer, Hash)> get_managed_linode_setting_with_http_info(api_version, linode_id)

```ruby
begin
  # Get a Linode's managed settings
  data, status_code, headers = api_instance.get_managed_linode_setting_with_http_info(api_version, linode_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedLinodeSetting200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_linode_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The Linode ID whose settings we are accessing. |  |

### Return type

[**GetManagedLinodeSetting200Response**](GetManagedLinodeSetting200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_linode_settings

> <GetManagedLinodeSettings200Response> get_managed_linode_settings(api_version, opts)

List managed Linode settings

Returns a paginated list of Managed Settings for your Linodes. There will be one entry per Linode on your Account.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed linode-settings-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List managed Linode settings
  result = api_instance.get_managed_linode_settings(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_linode_settings: #{e}"
end
```

#### Using the get_managed_linode_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedLinodeSettings200Response>, Integer, Hash)> get_managed_linode_settings_with_http_info(api_version, opts)

```ruby
begin
  # List managed Linode settings
  data, status_code, headers = api_instance.get_managed_linode_settings_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedLinodeSettings200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_linode_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetManagedLinodeSettings200Response**](GetManagedLinodeSettings200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_service

> <GetManagedService200Response> get_managed_service(api_version, service_id)

Get a managed service

Returns information about a single Managed Service on your Account.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed service-view 9994     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
service_id = 56 # Integer | The ID of the Managed Service to access.

begin
  # Get a managed service
  result = api_instance.get_managed_service(api_version, service_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_service: #{e}"
end
```

#### Using the get_managed_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedService200Response>, Integer, Hash)> get_managed_service_with_http_info(api_version, service_id)

```ruby
begin
  # Get a managed service
  data, status_code, headers = api_instance.get_managed_service_with_http_info(api_version, service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedService200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **service_id** | **Integer** | The ID of the Managed Service to access. |  |

### Return type

[**GetManagedService200Response**](GetManagedService200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_services

> <GetManagedServices200Response> get_managed_services(api_version)

List managed services

Returns a paginated list of Managed Services on your Account. These are the services Linode Managed is monitoring and will report and attempt to resolve issues with.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed services-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List managed services
  result = api_instance.get_managed_services(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_services: #{e}"
end
```

#### Using the get_managed_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedServices200Response>, Integer, Hash)> get_managed_services_with_http_info(api_version)

```ruby
begin
  # List managed services
  data, status_code, headers = api_instance.get_managed_services_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedServices200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetManagedServices200Response**](GetManagedServices200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_ssh_key

> <GetManagedSshKey200Response> get_managed_ssh_key(api_version)

Get a managed SSH key

Returns the unique SSH public key assigned to your Linode account's Managed service. If you [add this public key](https://www.linode.com/docs/products/services/managed/get-started/#adding-the-public-key) to a Linode on your account, Linode special forces will be able to log in to the Linode with this key when attempting to resolve issues.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed credential-sshkey-view     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Get a managed SSH key
  result = api_instance.get_managed_ssh_key(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_ssh_key: #{e}"
end
```

#### Using the get_managed_ssh_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedSshKey200Response>, Integer, Hash)> get_managed_ssh_key_with_http_info(api_version)

```ruby
begin
  # Get a managed SSH key
  data, status_code, headers = api_instance.get_managed_ssh_key_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedSshKey200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_ssh_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetManagedSshKey200Response**](GetManagedSshKey200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_stats

> <GetManagedStats200Response> get_managed_stats(api_version)

List managed stats

Returns a list of Managed Stats on your Account in the form of x and y data points. You can use these data points to plot your own graph visualizations. These stats reflect the last 24 hours of combined usage across all managed Linodes on your account giving you a high-level snapshot of data for the following:  - cpu - disk - swap - network in - network out  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed stats-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List managed stats
  result = api_instance.get_managed_stats(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_stats: #{e}"
end
```

#### Using the get_managed_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedStats200Response>, Integer, Hash)> get_managed_stats_with_http_info(api_version)

```ruby
begin
  # List managed stats
  data, status_code, headers = api_instance.get_managed_stats_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedStats200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->get_managed_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetManagedStats200Response**](GetManagedStats200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_disable_managed_service

> <PostDisableManagedService200Response> post_disable_managed_service(api_version, service_id)

Disable a managed service

Temporarily disables monitoring of a Managed Service.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed service-disable 9994     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
service_id = 56 # Integer | The ID of the Managed Service to disable.

begin
  # Disable a managed service
  result = api_instance.post_disable_managed_service(api_version, service_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_disable_managed_service: #{e}"
end
```

#### Using the post_disable_managed_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostDisableManagedService200Response>, Integer, Hash)> post_disable_managed_service_with_http_info(api_version, service_id)

```ruby
begin
  # Disable a managed service
  data, status_code, headers = api_instance.post_disable_managed_service_with_http_info(api_version, service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostDisableManagedService200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_disable_managed_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **service_id** | **Integer** | The ID of the Managed Service to disable. |  |

### Return type

[**PostDisableManagedService200Response**](PostDisableManagedService200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_enable_managed_service

> <PostEnableManagedService200Response> post_enable_managed_service(api_version, service_id)

Enable a managed service

Enables monitoring of a Managed Service.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed service-enable 9994     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
service_id = 56 # Integer | The ID of the Managed Service to enable.

begin
  # Enable a managed service
  result = api_instance.post_enable_managed_service(api_version, service_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_enable_managed_service: #{e}"
end
```

#### Using the post_enable_managed_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostEnableManagedService200Response>, Integer, Hash)> post_enable_managed_service_with_http_info(api_version, service_id)

```ruby
begin
  # Enable a managed service
  data, status_code, headers = api_instance.post_enable_managed_service_with_http_info(api_version, service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostEnableManagedService200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_enable_managed_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **service_id** | **Integer** | The ID of the Managed Service to enable. |  |

### Return type

[**PostEnableManagedService200Response**](PostEnableManagedService200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_managed_contact

> <PostManagedContact200Response> post_managed_contact(api_version, opts)

Create a managed contact

Creates a Managed Contact.  A Managed Contact is someone Linode special forces can contact in the course of attempting to resolve an issue with a Managed Service.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed contact-create \\   --name \"John Doe\" \\   --email \"john.doe@example.org\" \\   --phone.primary \"123-456-7890\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_managed_contact_request: LinodeOpenapiClient::PostManagedContactRequest.new # PostManagedContactRequest | Information about the contact to create.
}

begin
  # Create a managed contact
  result = api_instance.post_managed_contact(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_managed_contact: #{e}"
end
```

#### Using the post_managed_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostManagedContact200Response>, Integer, Hash)> post_managed_contact_with_http_info(api_version, opts)

```ruby
begin
  # Create a managed contact
  data, status_code, headers = api_instance.post_managed_contact_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostManagedContact200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_managed_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_managed_contact_request** | [**PostManagedContactRequest**](PostManagedContactRequest.md) | Information about the contact to create. | [optional] |

### Return type

[**PostManagedContact200Response**](PostManagedContact200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_managed_credential

> <PostManagedCredential200Response> post_managed_credential(api_version, opts)

Create a managed credential

Creates a Managed Credential. A Managed Credential is stored securely to allow Linode special forces to access your Managed Services and resolve issues.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed credential-create \\   --label prod-password-1 \\   --username johndoe \\   --password s3cur3P@ssw0rd     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_managed_credential_request: LinodeOpenapiClient::PostManagedCredentialRequest.new({label: 'prod-password-1', password: 's3cur3P@ssw0rd'}) # PostManagedCredentialRequest | Information about the Credential to create.
}

begin
  # Create a managed credential
  result = api_instance.post_managed_credential(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_managed_credential: #{e}"
end
```

#### Using the post_managed_credential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostManagedCredential200Response>, Integer, Hash)> post_managed_credential_with_http_info(api_version, opts)

```ruby
begin
  # Create a managed credential
  data, status_code, headers = api_instance.post_managed_credential_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostManagedCredential200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_managed_credential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_managed_credential_request** | [**PostManagedCredentialRequest**](PostManagedCredentialRequest.md) | Information about the Credential to create. | [optional] |

### Return type

[**PostManagedCredential200Response**](PostManagedCredential200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_managed_credential_revoke

> Object post_managed_credential_revoke(api_version, credential_id)

Delete a managed credential

Deletes a Managed Credential.  Linode special forces will no longer have access to this Credential when attempting to resolve issues.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed credential-revoke 9991     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
credential_id = 56 # Integer | The ID of the Credential to access.

begin
  # Delete a managed credential
  result = api_instance.post_managed_credential_revoke(api_version, credential_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_managed_credential_revoke: #{e}"
end
```

#### Using the post_managed_credential_revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_managed_credential_revoke_with_http_info(api_version, credential_id)

```ruby
begin
  # Delete a managed credential
  data, status_code, headers = api_instance.post_managed_credential_revoke_with_http_info(api_version, credential_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_managed_credential_revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **credential_id** | **Integer** | The ID of the Credential to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_managed_credential_username_password

> Object post_managed_credential_username_password(api_version, credential_id, opts)

Update a managed credential's username and password

Updates the username and password for a Managed Credential.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed credential-update-username-password 9991 \\   --username johndoe \\   --password s3cur3P@ssw0rd     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
credential_id = 56 # Integer | The ID of the Credential to update.
opts = {
  post_managed_credential_username_password_request: LinodeOpenapiClient::PostManagedCredentialUsernamePasswordRequest.new({password: 's3cur3P@ssw0rd'}) # PostManagedCredentialUsernamePasswordRequest | The new username and password to assign to the Managed Credential.
}

begin
  # Update a managed credential's username and password
  result = api_instance.post_managed_credential_username_password(api_version, credential_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_managed_credential_username_password: #{e}"
end
```

#### Using the post_managed_credential_username_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_managed_credential_username_password_with_http_info(api_version, credential_id, opts)

```ruby
begin
  # Update a managed credential's username and password
  data, status_code, headers = api_instance.post_managed_credential_username_password_with_http_info(api_version, credential_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_managed_credential_username_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **credential_id** | **Integer** | The ID of the Credential to update. |  |
| **post_managed_credential_username_password_request** | [**PostManagedCredentialUsernamePasswordRequest**](PostManagedCredentialUsernamePasswordRequest.md) | The new username and password to assign to the Managed Credential. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_managed_service

> <PostManagedService200Response> post_managed_service(api_version, opts)

Create a managed service

Creates a Managed Service. Linode Managed will begin monitoring this service and reporting and attempting to resolve any Issues.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed service-create \\   --service_type url \\   --label prod-1 \\   --address \"https://example.org\" \\   --timeout 30 \\   --body \"it worked\" \\   --consultation_group on-call \\   --notes \"The service name is \\     my-cool-application\" \\   --credentials 9991     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_managed_service_request: LinodeOpenapiClient::PostManagedServiceRequest.new({service_type: 'url', timeout: 30, label: 'prod-1', address: 'https://example.org'}) # PostManagedServiceRequest | Information about the service to monitor.
}

begin
  # Create a managed service
  result = api_instance.post_managed_service(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_managed_service: #{e}"
end
```

#### Using the post_managed_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostManagedService200Response>, Integer, Hash)> post_managed_service_with_http_info(api_version, opts)

```ruby
begin
  # Create a managed service
  data, status_code, headers = api_instance.post_managed_service_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostManagedService200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->post_managed_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_managed_service_request** | [**PostManagedServiceRequest**](PostManagedServiceRequest.md) | Information about the service to monitor. | [optional] |

### Return type

[**PostManagedService200Response**](PostManagedService200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_managed_contact

> <PutManagedContact200Response> put_managed_contact(api_version, contact_id, put_managed_contact_request)

Update a managed contact

Updates information about a Managed Contact. This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed contact-update 567 \\   --name \"John Doe\" \\   --email \"john.doe@example.org\" \\   --phone.primary \"123-456-7890\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
contact_id = 56 # Integer | The ID of the contact to access.
put_managed_contact_request = LinodeOpenapiClient::PutManagedContactRequest.new # PutManagedContactRequest | The fields to update.

begin
  # Update a managed contact
  result = api_instance.put_managed_contact(api_version, contact_id, put_managed_contact_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->put_managed_contact: #{e}"
end
```

#### Using the put_managed_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutManagedContact200Response>, Integer, Hash)> put_managed_contact_with_http_info(api_version, contact_id, put_managed_contact_request)

```ruby
begin
  # Update a managed contact
  data, status_code, headers = api_instance.put_managed_contact_with_http_info(api_version, contact_id, put_managed_contact_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutManagedContact200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->put_managed_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **contact_id** | **Integer** | The ID of the contact to access. |  |
| **put_managed_contact_request** | [**PutManagedContactRequest**](PutManagedContactRequest.md) | The fields to update. |  |

### Return type

[**PutManagedContact200Response**](PutManagedContact200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_managed_credential

> <GetManagedCredentials200ResponseDataInner> put_managed_credential(api_version, credential_id, post_managed_credential200_response)

Update a managed credential

Updates the label of a Managed Credential. This operation does not update the username and password for a Managed Credential. To do this, run the [Update a managed credential's username and password](https://techdocs.akamai.com/linode-api/reference/post-managed-credential-username-password)) operation instead. This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed credential-update 9991 \\   --label prod-password-1     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
credential_id = 56 # Integer | The ID of the Credential to access.
post_managed_credential200_response = LinodeOpenapiClient::PostManagedCredential200Response.new # PostManagedCredential200Response | The fields to update.

begin
  # Update a managed credential
  result = api_instance.put_managed_credential(api_version, credential_id, post_managed_credential200_response)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->put_managed_credential: #{e}"
end
```

#### Using the put_managed_credential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetManagedCredentials200ResponseDataInner>, Integer, Hash)> put_managed_credential_with_http_info(api_version, credential_id, post_managed_credential200_response)

```ruby
begin
  # Update a managed credential
  data, status_code, headers = api_instance.put_managed_credential_with_http_info(api_version, credential_id, post_managed_credential200_response)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetManagedCredentials200ResponseDataInner>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->put_managed_credential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **credential_id** | **Integer** | The ID of the Credential to access. |  |
| **post_managed_credential200_response** | [**PostManagedCredential200Response**](PostManagedCredential200Response.md) | The fields to update. |  |

### Return type

[**GetManagedCredentials200ResponseDataInner**](GetManagedCredentials200ResponseDataInner.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_managed_linode_setting

> <PutManagedLinodeSetting200Response> put_managed_linode_setting(api_version, linode_id, put_managed_linode_setting_request)

Update a Linode's managed settings

Updates a single Linode's Managed settings. This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed linode-setting-update \\   7833234 \\   --ssh.access true \\   --ssh.user linode \\   --ssh.port 22 \\   --ssh.ip 203.0.113.1     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
linode_id = 56 # Integer | The Linode ID whose settings we are accessing.
put_managed_linode_setting_request = LinodeOpenapiClient::PutManagedLinodeSettingRequest.new # PutManagedLinodeSettingRequest | The settings to update.

begin
  # Update a Linode's managed settings
  result = api_instance.put_managed_linode_setting(api_version, linode_id, put_managed_linode_setting_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->put_managed_linode_setting: #{e}"
end
```

#### Using the put_managed_linode_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutManagedLinodeSetting200Response>, Integer, Hash)> put_managed_linode_setting_with_http_info(api_version, linode_id, put_managed_linode_setting_request)

```ruby
begin
  # Update a Linode's managed settings
  data, status_code, headers = api_instance.put_managed_linode_setting_with_http_info(api_version, linode_id, put_managed_linode_setting_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutManagedLinodeSetting200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->put_managed_linode_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **linode_id** | **Integer** | The Linode ID whose settings we are accessing. |  |
| **put_managed_linode_setting_request** | [**PutManagedLinodeSettingRequest**](PutManagedLinodeSettingRequest.md) | The settings to update. |  |

### Return type

[**PutManagedLinodeSetting200Response**](PutManagedLinodeSetting200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_managed_service

> <PutManagedService200Response> put_managed_service(api_version, service_id, put_managed_service_request)

Update a managed service

Updates information about a Managed Service.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli managed service-update 9994 \\   --service_type url \\   --label prod-1 \\   --address \"https://example.org\" \\   --timeout 30 \\   --body \"it worked\" \\   --consultation_group on-call \\   --notes \"The service name is my-cool-application\" \\   --credentials 9991     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ManagedApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
service_id = 56 # Integer | The ID of the Managed Service to access.
put_managed_service_request = LinodeOpenapiClient::PutManagedServiceRequest.new # PutManagedServiceRequest | The fields to update.

begin
  # Update a managed service
  result = api_instance.put_managed_service(api_version, service_id, put_managed_service_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->put_managed_service: #{e}"
end
```

#### Using the put_managed_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutManagedService200Response>, Integer, Hash)> put_managed_service_with_http_info(api_version, service_id, put_managed_service_request)

```ruby
begin
  # Update a managed service
  data, status_code, headers = api_instance.put_managed_service_with_http_info(api_version, service_id, put_managed_service_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutManagedService200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ManagedApi->put_managed_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **service_id** | **Integer** | The ID of the Managed Service to access. |  |
| **put_managed_service_request** | [**PutManagedServiceRequest**](PutManagedServiceRequest.md) | The fields to update. |  |

### Return type

[**PutManagedService200Response**](PutManagedService200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

