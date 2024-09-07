# LinodeOpenapiClient::ProfileApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_personal_access_token**](ProfileApi.md#delete_personal_access_token) | **DELETE** /{apiVersion}/profile/tokens/{tokenId} | Revoke a personal access token |
| [**delete_profile_app**](ProfileApi.md#delete_profile_app) | **DELETE** /{apiVersion}/profile/apps/{appId} | Revoke app access |
| [**delete_profile_phone_number**](ProfileApi.md#delete_profile_phone_number) | **DELETE** /{apiVersion}/profile/phone-number | Delete a phone number |
| [**delete_ssh_key**](ProfileApi.md#delete_ssh_key) | **DELETE** /{apiVersion}/profile/sshkeys/{sshKeyId} | Delete an SSH key |
| [**delete_trusted_device**](ProfileApi.md#delete_trusted_device) | **DELETE** /{apiVersion}/profile/devices/{deviceId} | Revoke a trusted device |
| [**get_devices**](ProfileApi.md#get_devices) | **GET** /{apiVersion}/profile/devices | List trusted devices |
| [**get_personal_access_token**](ProfileApi.md#get_personal_access_token) | **GET** /{apiVersion}/profile/tokens/{tokenId} | Get a personal access token |
| [**get_personal_access_tokens**](ProfileApi.md#get_personal_access_tokens) | **GET** /{apiVersion}/profile/tokens | List personal access tokens |
| [**get_profile**](ProfileApi.md#get_profile) | **GET** /{apiVersion}/profile | Get a profile |
| [**get_profile_app**](ProfileApi.md#get_profile_app) | **GET** /{apiVersion}/profile/apps/{appId} | Get an authorized app |
| [**get_profile_apps**](ProfileApi.md#get_profile_apps) | **GET** /{apiVersion}/profile/apps | List authorized apps |
| [**get_profile_grants**](ProfileApi.md#get_profile_grants) | **GET** /{apiVersion}/profile/grants | List grants |
| [**get_profile_login**](ProfileApi.md#get_profile_login) | **GET** /{apiVersion}/profile/logins/{loginId} | Get a profile&#39;s login |
| [**get_profile_logins**](ProfileApi.md#get_profile_logins) | **GET** /{apiVersion}/profile/logins | List logins |
| [**get_security_questions**](ProfileApi.md#get_security_questions) | **GET** /{apiVersion}/profile/security-questions | List security questions |
| [**get_ssh_key**](ProfileApi.md#get_ssh_key) | **GET** /{apiVersion}/profile/sshkeys/{sshKeyId} | Get an SSH key |
| [**get_ssh_keys**](ProfileApi.md#get_ssh_keys) | **GET** /{apiVersion}/profile/sshkeys | List SSH keys |
| [**get_trusted_device**](ProfileApi.md#get_trusted_device) | **GET** /{apiVersion}/profile/devices/{deviceId} | Get a trusted device |
| [**get_user_preferences**](ProfileApi.md#get_user_preferences) | **GET** /{apiVersion}/profile/preferences | Get user preferences |
| [**post_add_ssh_key**](ProfileApi.md#post_add_ssh_key) | **POST** /{apiVersion}/profile/sshkeys | Add an SSH key |
| [**post_personal_access_token**](ProfileApi.md#post_personal_access_token) | **POST** /{apiVersion}/profile/tokens | Create a personal access token |
| [**post_profile_phone_number**](ProfileApi.md#post_profile_phone_number) | **POST** /{apiVersion}/profile/phone-number | Send a phone number verification code |
| [**post_profile_phone_number_verify**](ProfileApi.md#post_profile_phone_number_verify) | **POST** /{apiVersion}/profile/phone-number/verify | Verify a phone number |
| [**post_security_questions**](ProfileApi.md#post_security_questions) | **POST** /{apiVersion}/profile/security-questions | Answer security questions |
| [**post_tfa_confirm**](ProfileApi.md#post_tfa_confirm) | **POST** /{apiVersion}/profile/tfa-enable-confirm | Enable two factor authentication |
| [**post_tfa_disable**](ProfileApi.md#post_tfa_disable) | **POST** /{apiVersion}/profile/tfa-disable | Disable two factor authentication |
| [**post_tfa_enable**](ProfileApi.md#post_tfa_enable) | **POST** /{apiVersion}/profile/tfa-enable | Create a two factor secret |
| [**put_personal_access_token**](ProfileApi.md#put_personal_access_token) | **PUT** /{apiVersion}/profile/tokens/{tokenId} | Update a personal access token |
| [**put_profile**](ProfileApi.md#put_profile) | **PUT** /{apiVersion}/profile | Update a profile |
| [**put_ssh_key**](ProfileApi.md#put_ssh_key) | **PUT** /{apiVersion}/profile/sshkeys/{sshKeyId} | Update an SSH key |
| [**put_user_preferences**](ProfileApi.md#put_user_preferences) | **PUT** /{apiVersion}/profile/preferences | Update a user&#39;s preferences |


## delete_personal_access_token

> Object delete_personal_access_token(api_version, token_id)

Revoke a personal access token

Revokes a Personal Access Token. The token will be invalidated immediately, and requests using that token will fail with a 401. It is possible to revoke access to the token making the request to revoke a token, but keep in mind that doing so could lose you access to the api and require you to create a new token through some other means.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile token-delete 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
token_id = 56 # Integer | The ID of the token to access.

begin
  # Revoke a personal access token
  result = api_instance.delete_personal_access_token(api_version, token_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->delete_personal_access_token: #{e}"
end
```

#### Using the delete_personal_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_personal_access_token_with_http_info(api_version, token_id)

```ruby
begin
  # Revoke a personal access token
  data, status_code, headers = api_instance.delete_personal_access_token_with_http_info(api_version, token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->delete_personal_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **token_id** | **Integer** | The ID of the token to access. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_profile_app

> Object delete_profile_app(api_version, app_id)

Revoke app access

Expires this app token. This token may no longer be used to access your Account.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile app-delete 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
app_id = 56 # Integer | The authorized app ID to manage.

begin
  # Revoke app access
  result = api_instance.delete_profile_app(api_version, app_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->delete_profile_app: #{e}"
end
```

#### Using the delete_profile_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_profile_app_with_http_info(api_version, app_id)

```ruby
begin
  # Revoke app access
  data, status_code, headers = api_instance.delete_profile_app_with_http_info(api_version, app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->delete_profile_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **app_id** | **Integer** | The authorized app ID to manage. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_profile_phone_number

> Object delete_profile_phone_number(api_version)

Delete a phone number

Delete the verified phone number for the User making this request.  Use this operation to opt out of SMS messages for the requesting User after a phone number has been verified with the [Verify a phone number](https://techdocs.akamai.com/linode-api/reference/post-profile-phone-number-verify) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli phone delete     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Delete a phone number
  result = api_instance.delete_profile_phone_number(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->delete_profile_phone_number: #{e}"
end
```

#### Using the delete_profile_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_profile_phone_number_with_http_info(api_version)

```ruby
begin
  # Delete a phone number
  data, status_code, headers = api_instance.delete_profile_phone_number_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->delete_profile_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ssh_key

> Object delete_ssh_key(api_version, ssh_key_id)

Delete an SSH key

Deletes an SSH Key you have access to.  __Note__. deleting an SSH Key will _not_ remove it from any Linode or Disk that was deployed with `authorized_keys`. In those cases, the keys must be manually deleted on the Linode or Disk. This operation will only delete the key's association from your Profile.   <<LB>>  ---   - __CLI__.      ```     linode-cli sshkeys delete 42     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
ssh_key_id = 56 # Integer | The ID of the SSHKey.

begin
  # Delete an SSH key
  result = api_instance.delete_ssh_key(api_version, ssh_key_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->delete_ssh_key: #{e}"
end
```

#### Using the delete_ssh_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_ssh_key_with_http_info(api_version, ssh_key_id)

```ruby
begin
  # Delete an SSH key
  data, status_code, headers = api_instance.delete_ssh_key_with_http_info(api_version, ssh_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->delete_ssh_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **ssh_key_id** | **Integer** | The ID of the SSHKey. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_trusted_device

> Object delete_trusted_device(api_version, device_id)

Revoke a trusted device

Revoke an active TrustedDevice for your User.  Once a TrustedDevice is revoked, this device will have to log in again before accessing your Linode account.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile device-revoke 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
device_id = 56 # Integer | The ID of the TrustedDevice.

begin
  # Revoke a trusted device
  result = api_instance.delete_trusted_device(api_version, device_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->delete_trusted_device: #{e}"
end
```

#### Using the delete_trusted_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_trusted_device_with_http_info(api_version, device_id)

```ruby
begin
  # Revoke a trusted device
  data, status_code, headers = api_instance.delete_trusted_device_with_http_info(api_version, device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->delete_trusted_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **device_id** | **Integer** | The ID of the TrustedDevice. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_devices

> <GetDevices200Response> get_devices(api_version)

List trusted devices

Returns a paginated list of active TrustedDevices for your User. Browsers with an active Remember Me Session are logged into your account until the session expires or is revoked.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile devices-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List trusted devices
  result = api_instance.get_devices(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_devices: #{e}"
end
```

#### Using the get_devices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDevices200Response>, Integer, Hash)> get_devices_with_http_info(api_version)

```ruby
begin
  # List trusted devices
  data, status_code, headers = api_instance.get_devices_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDevices200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_devices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetDevices200Response**](GetDevices200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_personal_access_token

> <GetPersonalAccessToken200Response> get_personal_access_token(api_version, token_id)

Get a personal access token

Returns a single Personal Access Token.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile token-view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
token_id = 56 # Integer | The ID of the token to access.

begin
  # Get a personal access token
  result = api_instance.get_personal_access_token(api_version, token_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_personal_access_token: #{e}"
end
```

#### Using the get_personal_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPersonalAccessToken200Response>, Integer, Hash)> get_personal_access_token_with_http_info(api_version, token_id)

```ruby
begin
  # Get a personal access token
  data, status_code, headers = api_instance.get_personal_access_token_with_http_info(api_version, token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPersonalAccessToken200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_personal_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **token_id** | **Integer** | The ID of the token to access. |  |

### Return type

[**GetPersonalAccessToken200Response**](GetPersonalAccessToken200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_personal_access_tokens

> <GetPersonalAccessTokens200Response> get_personal_access_tokens(api_version)

List personal access tokens

Returns a paginated list of Personal Access Tokens currently active for your User.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile tokens-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List personal access tokens
  result = api_instance.get_personal_access_tokens(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_personal_access_tokens: #{e}"
end
```

#### Using the get_personal_access_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPersonalAccessTokens200Response>, Integer, Hash)> get_personal_access_tokens_with_http_info(api_version)

```ruby
begin
  # List personal access tokens
  data, status_code, headers = api_instance.get_personal_access_tokens_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPersonalAccessTokens200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_personal_access_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetPersonalAccessTokens200Response**](GetPersonalAccessTokens200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile

> <GetProfile200Response> get_profile(api_version)

Get a profile

Returns information about the current User. This can be used to see who is acting in applications where more than one token is managed. For example, in third-party OAuth applications.  This operation is always accessible, no matter what OAuth scopes the acting token has.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile view     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Get a profile
  result = api_instance.get_profile(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile: #{e}"
end
```

#### Using the get_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProfile200Response>, Integer, Hash)> get_profile_with_http_info(api_version)

```ruby
begin
  # Get a profile
  data, status_code, headers = api_instance.get_profile_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProfile200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetProfile200Response**](GetProfile200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_app

> <GetProfileApp200Response> get_profile_app(api_version, app_id)

Get an authorized app

Returns information about a single app you've authorized to access your Account.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile app-view 1234     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
app_id = 56 # Integer | The authorized app ID to manage.

begin
  # Get an authorized app
  result = api_instance.get_profile_app(api_version, app_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile_app: #{e}"
end
```

#### Using the get_profile_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProfileApp200Response>, Integer, Hash)> get_profile_app_with_http_info(api_version, app_id)

```ruby
begin
  # Get an authorized app
  data, status_code, headers = api_instance.get_profile_app_with_http_info(api_version, app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProfileApp200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **app_id** | **Integer** | The authorized app ID to manage. |  |

### Return type

[**GetProfileApp200Response**](GetProfileApp200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_apps

> <GetProfileApps200Response> get_profile_apps(api_version, opts)

List authorized apps

This is a collection of OAuth apps that you've given access to your Account, and includes the level of access granted.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile apps-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List authorized apps
  result = api_instance.get_profile_apps(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile_apps: #{e}"
end
```

#### Using the get_profile_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProfileApps200Response>, Integer, Hash)> get_profile_apps_with_http_info(api_version, opts)

```ruby
begin
  # List authorized apps
  data, status_code, headers = api_instance.get_profile_apps_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProfileApps200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile_apps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetProfileApps200Response**](GetProfileApps200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_grants

> <GetProfileGrants200Response> get_profile_grants(api_version)

List grants

This returns a GrantsResponse describing what the acting User has been granted access to.  For unrestricted users, this will return a  204 and no body because unrestricted users have access to everything without grants.  This will not return information about entities you do not have access to.  This operation is useful when writing third-party OAuth applications to see what options you should present to the acting User.  For example, if they do not have `global.add_linodes`, you might not display a button to deploy a new Linode.  Any client may run this operation; no OAuth scopes are required.

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List grants
  result = api_instance.get_profile_grants(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile_grants: #{e}"
end
```

#### Using the get_profile_grants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProfileGrants200Response>, Integer, Hash)> get_profile_grants_with_http_info(api_version)

```ruby
begin
  # List grants
  data, status_code, headers = api_instance.get_profile_grants_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProfileGrants200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile_grants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetProfileGrants200Response**](GetProfileGrants200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_login

> <GetProfileLogin200Response> get_profile_login(api_version, login_id)

Get a profile's login

Returns a login object displaying information about a successful account login from this user.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile login-view 1234     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
login_id = 56 # Integer | The ID of the login object to access.

begin
  # Get a profile's login
  result = api_instance.get_profile_login(api_version, login_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile_login: #{e}"
end
```

#### Using the get_profile_login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProfileLogin200Response>, Integer, Hash)> get_profile_login_with_http_info(api_version, login_id)

```ruby
begin
  # Get a profile's login
  data, status_code, headers = api_instance.get_profile_login_with_http_info(api_version, login_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProfileLogin200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile_login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **login_id** | **Integer** | The ID of the login object to access. |  |

### Return type

[**GetProfileLogin200Response**](GetProfileLogin200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_logins

> <GetProfileLogins200Response> get_profile_logins(api_version)

List logins

Returns a collection of successful account logins from this user during the last 90 days.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile logins-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List logins
  result = api_instance.get_profile_logins(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile_logins: #{e}"
end
```

#### Using the get_profile_logins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProfileLogins200Response>, Integer, Hash)> get_profile_logins_with_http_info(api_version)

```ruby
begin
  # List logins
  data, status_code, headers = api_instance.get_profile_logins_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProfileLogins200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_profile_logins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetProfileLogins200Response**](GetProfileLogins200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_security_questions

> <GetSecurityQuestions200Response> get_security_questions(api_version)

List security questions

Returns a collection of security questions and their responses, if any, for your User Profile.   <<LB>>  ---   - __CLI__.      ```     linode-cli security-questions list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List security questions
  result = api_instance.get_security_questions(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_security_questions: #{e}"
end
```

#### Using the get_security_questions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSecurityQuestions200Response>, Integer, Hash)> get_security_questions_with_http_info(api_version)

```ruby
begin
  # List security questions
  data, status_code, headers = api_instance.get_security_questions_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSecurityQuestions200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_security_questions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetSecurityQuestions200Response**](GetSecurityQuestions200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ssh_key

> <GetSshKey200Response> get_ssh_key(api_version, ssh_key_id)

Get an SSH key

Returns a single SSH Key object identified by `id` that you have access to view.   <<LB>>  ---   - __CLI__.      ```     linode-cli sshkeys view 42     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
ssh_key_id = 56 # Integer | The ID of the SSHKey.

begin
  # Get an SSH key
  result = api_instance.get_ssh_key(api_version, ssh_key_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_ssh_key: #{e}"
end
```

#### Using the get_ssh_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSshKey200Response>, Integer, Hash)> get_ssh_key_with_http_info(api_version, ssh_key_id)

```ruby
begin
  # Get an SSH key
  data, status_code, headers = api_instance.get_ssh_key_with_http_info(api_version, ssh_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSshKey200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_ssh_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **ssh_key_id** | **Integer** | The ID of the SSHKey. |  |

### Return type

[**GetSshKey200Response**](GetSshKey200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ssh_keys

> <GetSshKeys200Response> get_ssh_keys(api_version, opts)

List SSH keys

Returns a collection of SSH Keys you've added to your Profile.   <<LB>>  ---   - __CLI__.      ```     linode-cli sshkeys list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List SSH keys
  result = api_instance.get_ssh_keys(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_ssh_keys: #{e}"
end
```

#### Using the get_ssh_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSshKeys200Response>, Integer, Hash)> get_ssh_keys_with_http_info(api_version, opts)

```ruby
begin
  # List SSH keys
  data, status_code, headers = api_instance.get_ssh_keys_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSshKeys200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_ssh_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetSshKeys200Response**](GetSshKeys200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_trusted_device

> <GetTrustedDevice200Response> get_trusted_device(api_version, device_id)

Get a trusted device

Returns a single active TrustedDevice for your User.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile device-view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
device_id = 56 # Integer | The ID of the TrustedDevice.

begin
  # Get a trusted device
  result = api_instance.get_trusted_device(api_version, device_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_trusted_device: #{e}"
end
```

#### Using the get_trusted_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTrustedDevice200Response>, Integer, Hash)> get_trusted_device_with_http_info(api_version, device_id)

```ruby
begin
  # Get a trusted device
  data, status_code, headers = api_instance.get_trusted_device_with_http_info(api_version, device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTrustedDevice200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_trusted_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **device_id** | **Integer** | The ID of the TrustedDevice. |  |

### Return type

[**GetTrustedDevice200Response**](GetTrustedDevice200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_preferences

> Object get_user_preferences(api_version)

Get user preferences

View a list of user preferences tied to the OAuth client that generated the token making the request. The user preferences endpoints allow consumers of the API to store arbitrary JSON data, such as a user's font size preference or preferred display name. User preferences are available for each OAuth client registered to your account, and as such an account can have multiple user preferences.   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Get user preferences
  result = api_instance.get_user_preferences(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_user_preferences: #{e}"
end
```

#### Using the get_user_preferences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_user_preferences_with_http_info(api_version)

```ruby
begin
  # Get user preferences
  data, status_code, headers = api_instance.get_user_preferences_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->get_user_preferences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_add_ssh_key

> <PostAddSshKey200Response> post_add_ssh_key(api_version, opts)

Add an SSH key

Adds an SSH Key to your Account profile.   <<LB>>  ---   - __CLI__.      ```     linode-cli sshkeys create \\   --label \"My SSH Key\" \\   --ssh_key \"ssh-rsa AAAA_valid_public_ssh_key_123456785== user@their-computer\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  get_ssh_key200_response: LinodeOpenapiClient::GetSshKey200Response.new # GetSshKey200Response | Add SSH Key.
}

begin
  # Add an SSH key
  result = api_instance.post_add_ssh_key(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_add_ssh_key: #{e}"
end
```

#### Using the post_add_ssh_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAddSshKey200Response>, Integer, Hash)> post_add_ssh_key_with_http_info(api_version, opts)

```ruby
begin
  # Add an SSH key
  data, status_code, headers = api_instance.post_add_ssh_key_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAddSshKey200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_add_ssh_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **get_ssh_key200_response** | [**GetSshKey200Response**](GetSshKey200Response.md) | Add SSH Key. | [optional] |

### Return type

[**PostAddSshKey200Response**](PostAddSshKey200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_personal_access_token

> <PostPersonalAccessToken200Response> post_personal_access_token(api_version, post_personal_access_token_request)

Create a personal access token

Creates a Personal Access Token for your User. The raw token will be returned in the response, but will never be returned again afterward so be sure to take note of it. You may create a token with _at most_ the scopes of your current token. The created token will be able to access your Account until the given expiry, or until it is revoked. __Parent and child accounts__ In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - If you're using a child account parent user (proxy user), you can't create this form of token. The only token available to a proxy user is one that lets you run operations in a child account. These are created with the [Create a proxy user token](https://techdocs.akamai.com/linode-api/reference/post-child-account-token) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile token-create \\   --scopes '*' \\   --expiry '2018-01-01T13:46:32' \\   --label linode-cli     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_personal_access_token_request = LinodeOpenapiClient::PostPersonalAccessTokenRequest.new # PostPersonalAccessTokenRequest | Information about the requested token.

begin
  # Create a personal access token
  result = api_instance.post_personal_access_token(api_version, post_personal_access_token_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_personal_access_token: #{e}"
end
```

#### Using the post_personal_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostPersonalAccessToken200Response>, Integer, Hash)> post_personal_access_token_with_http_info(api_version, post_personal_access_token_request)

```ruby
begin
  # Create a personal access token
  data, status_code, headers = api_instance.post_personal_access_token_with_http_info(api_version, post_personal_access_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostPersonalAccessToken200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_personal_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_personal_access_token_request** | [**PostPersonalAccessTokenRequest**](PostPersonalAccessTokenRequest.md) | Information about the requested token. |  |

### Return type

[**PostPersonalAccessToken200Response**](PostPersonalAccessToken200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_profile_phone_number

> Object post_profile_phone_number(api_version, opts)

Send a phone number verification code

Send a one-time verification code via SMS message to the submitted phone number. Providing your phone number helps ensure you can securely access your Account in case other ways to connect are lost. Your phone number is only used to verify your identity by sending an SMS message. Standard carrier messaging fees may apply.  - By accessing this operation you are opting in to receive SMS messages. You can opt out of SMS messages by running the [Delete a phone number](https://techdocs.akamai.com/linode-api/reference/delete-profile-phone-number) operation after your phone number is verified.  - Verification codes are valid for 10 minutes after they are sent.  - Subsequent requests made prior to code expiration result in sending the same code.  Once a verification code is received, verify your phone number with the [Verify a phone number](https://techdocs.akamai.com/linode-api/reference/post-profile-phone-number-verify) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli phone sms-code-send \\   --iso-code US \\   --phone-number 555-555-5555     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_profile_phone_number_request: LinodeOpenapiClient::PostProfilePhoneNumberRequest.new({iso_code: 'US', phone_number: '555-555-5555'}) # PostProfilePhoneNumberRequest | Enter a phone number and country code for verification.
}

begin
  # Send a phone number verification code
  result = api_instance.post_profile_phone_number(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_profile_phone_number: #{e}"
end
```

#### Using the post_profile_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_profile_phone_number_with_http_info(api_version, opts)

```ruby
begin
  # Send a phone number verification code
  data, status_code, headers = api_instance.post_profile_phone_number_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_profile_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_profile_phone_number_request** | [**PostProfilePhoneNumberRequest**](PostProfilePhoneNumberRequest.md) | Enter a phone number and country code for verification. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_profile_phone_number_verify

> Object post_profile_phone_number_verify(api_version, opts)

Verify a phone number

Verify a phone number by confirming the one-time code received via SMS message after running the [Send a phone number verification code](https://techdocs.akamai.com/linode-api/reference/post-profile-phone-number) operation.  - Verification codes are valid for 10 minutes after they are sent.  - Only the same User that made the verification code request can use that code with this operation.  Once completed, the verified phone number is assigned to the User making the request. To change the verified phone number for a User, first run the [Delete a phone number](https://techdocs.akamai.com/linode-api/reference/delete-profile-phone-number) operation, then begin the verification process again with the [Send a phone number verification code](https://techdocs.akamai.com/linode-api/reference/post-profile-phone-number) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli phone verify \\   --otp_code 123456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_profile_phone_number_verify_request: LinodeOpenapiClient::PostProfilePhoneNumberVerifyRequest.new({otp_code: 'US'}) # PostProfilePhoneNumberVerifyRequest | Enter a phone verification code for confirmation.
}

begin
  # Verify a phone number
  result = api_instance.post_profile_phone_number_verify(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_profile_phone_number_verify: #{e}"
end
```

#### Using the post_profile_phone_number_verify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_profile_phone_number_verify_with_http_info(api_version, opts)

```ruby
begin
  # Verify a phone number
  data, status_code, headers = api_instance.post_profile_phone_number_verify_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_profile_phone_number_verify_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_profile_phone_number_verify_request** | [**PostProfilePhoneNumberVerifyRequest**](PostProfilePhoneNumberVerifyRequest.md) | Enter a phone verification code for confirmation. | [optional] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_security_questions

> <PostSecurityQuestions200Response> post_security_questions(api_version, opts)

Answer security questions

Adds security question responses for your User.  Requires exactly three unique questions.  Previous responses are overwritten if answered or reset to `null` if unanswered.  __Note__. Security questions must be answered for your User prior to accessing the [Create a two factor secret](https://techdocs.akamai.com/linode-api/reference/post-tfa-enable) operation.   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_security_questions_request: LinodeOpenapiClient::PostSecurityQuestionsRequest.new # PostSecurityQuestionsRequest | Answer Security Questions.
}

begin
  # Answer security questions
  result = api_instance.post_security_questions(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_security_questions: #{e}"
end
```

#### Using the post_security_questions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostSecurityQuestions200Response>, Integer, Hash)> post_security_questions_with_http_info(api_version, opts)

```ruby
begin
  # Answer security questions
  data, status_code, headers = api_instance.post_security_questions_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostSecurityQuestions200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_security_questions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_security_questions_request** | [**PostSecurityQuestionsRequest**](PostSecurityQuestionsRequest.md) | Answer Security Questions. | [optional] |

### Return type

[**PostSecurityQuestions200Response**](PostSecurityQuestions200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_tfa_confirm

> <PostTfaConfirm200Response> post_tfa_confirm(api_version, post_tfa_confirm_request)

Enable two factor authentication

Confirms that you can successfully generate Two Factor codes and enables TFA on your Account. Once this is complete, login attempts from untrusted computers will be required to provide a Two Factor code before they are successful.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile tfa-confirm \\   --tfa_code 213456     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_tfa_confirm_request = LinodeOpenapiClient::PostTfaConfirmRequest.new # PostTfaConfirmRequest | The Two Factor code you generated with your Two Factor secret.

begin
  # Enable two factor authentication
  result = api_instance.post_tfa_confirm(api_version, post_tfa_confirm_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_tfa_confirm: #{e}"
end
```

#### Using the post_tfa_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostTfaConfirm200Response>, Integer, Hash)> post_tfa_confirm_with_http_info(api_version, post_tfa_confirm_request)

```ruby
begin
  # Enable two factor authentication
  data, status_code, headers = api_instance.post_tfa_confirm_with_http_info(api_version, post_tfa_confirm_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostTfaConfirm200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_tfa_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_tfa_confirm_request** | [**PostTfaConfirmRequest**](PostTfaConfirmRequest.md) | The Two Factor code you generated with your Two Factor secret. |  |

### Return type

[**PostTfaConfirm200Response**](PostTfaConfirm200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_tfa_disable

> Object post_tfa_disable(api_version)

Disable two factor authentication

Disables Two Factor Authentication for your User. Once successful, login attempts from untrusted computers will only require a password before being successful. This is less secure, and is discouraged.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile tfa-disable     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Disable two factor authentication
  result = api_instance.post_tfa_disable(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_tfa_disable: #{e}"
end
```

#### Using the post_tfa_disable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_tfa_disable_with_http_info(api_version)

```ruby
begin
  # Disable two factor authentication
  data, status_code, headers = api_instance.post_tfa_disable_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_tfa_disable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_tfa_enable

> <PostTfaEnable200Response> post_tfa_enable(api_version)

Create a two factor secret

Generates a Two Factor secret for your User. To enable TFA for your User, enter the secret obtained from this operation with the [Enable two factor authentication](https://techdocs.akamai.com/linode-api/reference/post-tfa-confirm) operation. Once enabled, logins from untrusted computers are required to provide a TFA code before they are successful.  Run the [Answer security questions](https://techdocs.akamai.com/linode-api/reference/post-security-questions) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile tfa-enable     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Create a two factor secret
  result = api_instance.post_tfa_enable(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_tfa_enable: #{e}"
end
```

#### Using the post_tfa_enable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostTfaEnable200Response>, Integer, Hash)> post_tfa_enable_with_http_info(api_version)

```ruby
begin
  # Create a two factor secret
  data, status_code, headers = api_instance.post_tfa_enable_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostTfaEnable200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->post_tfa_enable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**PostTfaEnable200Response**](PostTfaEnable200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_personal_access_token

> <PutPersonalAccessToken200Response> put_personal_access_token(api_version, token_id, put_personal_access_token_request)

Update a personal access token

Updates a Personal Access Token.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile token-update 123 \\   --label linode-cli     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
token_id = 56 # Integer | The ID of the token to access.
put_personal_access_token_request = LinodeOpenapiClient::PutPersonalAccessTokenRequest.new # PutPersonalAccessTokenRequest | The fields to update.

begin
  # Update a personal access token
  result = api_instance.put_personal_access_token(api_version, token_id, put_personal_access_token_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->put_personal_access_token: #{e}"
end
```

#### Using the put_personal_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutPersonalAccessToken200Response>, Integer, Hash)> put_personal_access_token_with_http_info(api_version, token_id, put_personal_access_token_request)

```ruby
begin
  # Update a personal access token
  data, status_code, headers = api_instance.put_personal_access_token_with_http_info(api_version, token_id, put_personal_access_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutPersonalAccessToken200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->put_personal_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **token_id** | **Integer** | The ID of the token to access. |  |
| **put_personal_access_token_request** | [**PutPersonalAccessTokenRequest**](PutPersonalAccessTokenRequest.md) | The fields to update. |  |

### Return type

[**PutPersonalAccessToken200Response**](PutPersonalAccessToken200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_profile

> <PutProfile200Response> put_profile(api_version, put_profile_request)

Update a profile

Update information in your Profile.  This operation requires the `account:read_write` OAuth Scope.  __Parent and child accounts__  In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - You can't edit the `email` for a child account parent user (proxy user). This value is fixed and set when you provision this environment.   <<LB>>  ---   - __CLI__.      ```     linode-cli profile update \\   --email example-user@gmail.com \\   --timezone US/Eastern \\   --email_notifications true \\   --list_auth_method keys_only \\   --two_factor_auth true \\   --restricted false     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
put_profile_request = LinodeOpenapiClient::PutProfileRequest.new # PutProfileRequest | The fields to update.

begin
  # Update a profile
  result = api_instance.put_profile(api_version, put_profile_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->put_profile: #{e}"
end
```

#### Using the put_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutProfile200Response>, Integer, Hash)> put_profile_with_http_info(api_version, put_profile_request)

```ruby
begin
  # Update a profile
  data, status_code, headers = api_instance.put_profile_with_http_info(api_version, put_profile_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutProfile200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->put_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **put_profile_request** | [**PutProfileRequest**](PutProfileRequest.md) | The fields to update. |  |

### Return type

[**PutProfile200Response**](PutProfile200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_ssh_key

> <GetSshKey200Response> put_ssh_key(api_version, ssh_key_id, put_ssh_key_request)

Update an SSH key

Updates an SSH Key that you have permission to `read_write`.  Only SSH key labels can be updated.   <<LB>>  ---   - __CLI__.      ```     linode-cli sshkeys update 42 \\   --label \"my laptop\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
ssh_key_id = 56 # Integer | The ID of the SSHKey.
put_ssh_key_request = LinodeOpenapiClient::PutSshKeyRequest.new # PutSshKeyRequest | The fields to update.

begin
  # Update an SSH key
  result = api_instance.put_ssh_key(api_version, ssh_key_id, put_ssh_key_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->put_ssh_key: #{e}"
end
```

#### Using the put_ssh_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSshKey200Response>, Integer, Hash)> put_ssh_key_with_http_info(api_version, ssh_key_id, put_ssh_key_request)

```ruby
begin
  # Update an SSH key
  data, status_code, headers = api_instance.put_ssh_key_with_http_info(api_version, ssh_key_id, put_ssh_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSshKey200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->put_ssh_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **ssh_key_id** | **Integer** | The ID of the SSHKey. |  |
| **put_ssh_key_request** | [**PutSshKeyRequest**](PutSshKeyRequest.md) | The fields to update. |  |

### Return type

[**GetSshKey200Response**](GetSshKey200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_user_preferences

> Object put_user_preferences(api_version, body)

Update a user's preferences

Updates a user's preferences. These preferences are tied to the OAuth client that generated the token making the request. The user preferences endpoints allow consumers of the API to store arbitrary JSON data, such as a user's font size preference or preferred display name. An account may have multiple preferences. Preferences, and the pertaining request body, may contain any arbitrary JSON data that the user would like to store.   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::ProfileApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
body = { ... } # Object | The user preferences to update or store.

begin
  # Update a user's preferences
  result = api_instance.put_user_preferences(api_version, body)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->put_user_preferences: #{e}"
end
```

#### Using the put_user_preferences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> put_user_preferences_with_http_info(api_version, body)

```ruby
begin
  # Update a user's preferences
  data, status_code, headers = api_instance.put_user_preferences_with_http_info(api_version, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling ProfileApi->put_user_preferences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **body** | **Object** | The user preferences to update or store. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

