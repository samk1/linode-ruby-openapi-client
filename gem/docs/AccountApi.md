# LinodeOpenapiClient::AccountApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_client**](AccountApi.md#delete_client) | **DELETE** /{apiVersion}/account/oauth-clients/{clientId} | Delete an OAuth client |
| [**delete_entity_transfer**](AccountApi.md#delete_entity_transfer) | **DELETE** /{apiVersion}/account/entity-transfers/{token} | Cancel an entity transfer |
| [**delete_payment_method**](AccountApi.md#delete_payment_method) | **DELETE** /{apiVersion}/account/payment-methods/{paymentMethodId} | Delete a payment method |
| [**delete_service_transfer**](AccountApi.md#delete_service_transfer) | **DELETE** /{apiVersion}/account/service-transfers/{token} | Cancel a service transfer |
| [**delete_user**](AccountApi.md#delete_user) | **DELETE** /{apiVersion}/account/users/{username} | Delete a user |
| [**get_account**](AccountApi.md#get_account) | **GET** /{apiVersion}/account | Get your account |
| [**get_account_agreements**](AccountApi.md#get_account_agreements) | **GET** /{apiVersion}/account/agreements | List agreements |
| [**get_account_availability**](AccountApi.md#get_account_availability) | **GET** /{apiVersion}/account/availability/{id} | Get a region&#39;s service availability |
| [**get_account_login**](AccountApi.md#get_account_login) | **GET** /{apiVersion}/account/logins/{loginId} | Get an account login |
| [**get_account_logins**](AccountApi.md#get_account_logins) | **GET** /{apiVersion}/account/logins | List user logins |
| [**get_account_settings**](AccountApi.md#get_account_settings) | **GET** /{apiVersion}/account/settings | Get account settings |
| [**get_availability**](AccountApi.md#get_availability) | **GET** /{apiVersion}/account/availability | List available services |
| [**get_child_account**](AccountApi.md#get_child_account) | **GET** /{apiVersion}/account/child-accounts/{euuid} | Get a child account |
| [**get_child_accounts**](AccountApi.md#get_child_accounts) | **GET** /{apiVersion}/account/child-accounts | List child accounts |
| [**get_client**](AccountApi.md#get_client) | **GET** /{apiVersion}/account/oauth-clients/{clientId} | Get an OAuth client |
| [**get_client_thumbnail**](AccountApi.md#get_client_thumbnail) | **GET** /{apiVersion}/account/oauth-clients/{clientId}/thumbnail | Get the OAuth client&#39;s thumbnail |
| [**get_clients**](AccountApi.md#get_clients) | **GET** /{apiVersion}/account/oauth-clients | List OAuth clients |
| [**get_enrolled_beta_program**](AccountApi.md#get_enrolled_beta_program) | **GET** /{apiVersion}/account/betas/{betaId} | Get an enrolled Beta program |
| [**get_enrolled_beta_programs**](AccountApi.md#get_enrolled_beta_programs) | **GET** /{apiVersion}/account/betas | List enrolled Beta programs |
| [**get_entity_transfer**](AccountApi.md#get_entity_transfer) | **GET** /{apiVersion}/account/entity-transfers/{token} | Get an entity transfer |
| [**get_entity_transfers**](AccountApi.md#get_entity_transfers) | **GET** /{apiVersion}/account/entity-transfers | List entity transfers |
| [**get_event**](AccountApi.md#get_event) | **GET** /{apiVersion}/account/events/{eventId} | Get an event |
| [**get_events**](AccountApi.md#get_events) | **GET** /{apiVersion}/account/events | List events |
| [**get_invoice**](AccountApi.md#get_invoice) | **GET** /{apiVersion}/account/invoices/{invoiceId} | Get an invoice |
| [**get_invoice_items**](AccountApi.md#get_invoice_items) | **GET** /{apiVersion}/account/invoices/{invoiceId}/items | List invoice items |
| [**get_invoices**](AccountApi.md#get_invoices) | **GET** /{apiVersion}/account/invoices | List invoices |
| [**get_maintenance**](AccountApi.md#get_maintenance) | **GET** /{apiVersion}/account/maintenance | List maintenances |
| [**get_notifications**](AccountApi.md#get_notifications) | **GET** /{apiVersion}/account/notifications | List notifications |
| [**get_payment**](AccountApi.md#get_payment) | **GET** /{apiVersion}/account/payments/{paymentId} | Get a payment |
| [**get_payment_method**](AccountApi.md#get_payment_method) | **GET** /{apiVersion}/account/payment-methods/{paymentMethodId} | Get a payment method |
| [**get_payment_methods**](AccountApi.md#get_payment_methods) | **GET** /{apiVersion}/account/payment-methods | List payment methods |
| [**get_payments**](AccountApi.md#get_payments) | **GET** /{apiVersion}/account/payments | List payments |
| [**get_service_transfer**](AccountApi.md#get_service_transfer) | **GET** /{apiVersion}/account/service-transfers/{token} | Get a service transfer request |
| [**get_service_transfers**](AccountApi.md#get_service_transfers) | **GET** /{apiVersion}/account/service-transfers | List service transfers |
| [**get_transfer**](AccountApi.md#get_transfer) | **GET** /{apiVersion}/account/transfer | Get network usage |
| [**get_user**](AccountApi.md#get_user) | **GET** /{apiVersion}/account/users/{username} | Get a user |
| [**get_user_grants**](AccountApi.md#get_user_grants) | **GET** /{apiVersion}/account/users/{username}/grants | List a user&#39;s grants |
| [**get_users**](AccountApi.md#get_users) | **GET** /{apiVersion}/account/users | List users |
| [**post_accept_entity_transfer**](AccountApi.md#post_accept_entity_transfer) | **POST** /{apiVersion}/account/entity-transfers/{token}/accept | Accept an entity transfer |
| [**post_accept_service_transfer**](AccountApi.md#post_accept_service_transfer) | **POST** /{apiVersion}/account/service-transfers/{token}/accept | Accept a service transfer |
| [**post_account_agreements**](AccountApi.md#post_account_agreements) | **POST** /{apiVersion}/account/agreements | Acknowledge agreements |
| [**post_beta_program**](AccountApi.md#post_beta_program) | **POST** /{apiVersion}/account/betas | Enroll in a Beta program |
| [**post_cancel_account**](AccountApi.md#post_cancel_account) | **POST** /{apiVersion}/account/cancel | Cancel your account |
| [**post_child_account_token**](AccountApi.md#post_child_account_token) | **POST** /{apiVersion}/account/child-accounts/{euuid}/token | Create a proxy user token |
| [**post_client**](AccountApi.md#post_client) | **POST** /{apiVersion}/account/oauth-clients | Create an OAuth client |
| [**post_credit_card**](AccountApi.md#post_credit_card) | **POST** /{apiVersion}/account/credit-card | Add or edit a credit card |
| [**post_enable_account_managed**](AccountApi.md#post_enable_account_managed) | **POST** /{apiVersion}/account/settings/managed-enable | Enable Linode Managed |
| [**post_entity_transfer**](AccountApi.md#post_entity_transfer) | **POST** /{apiVersion}/account/entity-transfers | Create an entity transfer |
| [**post_event_read**](AccountApi.md#post_event_read) | **POST** /{apiVersion}/account/events/{eventId}/read | Mark an event as read |
| [**post_event_seen**](AccountApi.md#post_event_seen) | **POST** /{apiVersion}/account/events/{eventId}/seen | Mark an event as seen |
| [**post_execute_pay_pal_payment**](AccountApi.md#post_execute_pay_pal_payment) | **POST** /{apiVersion}/account/payments/paypal/execute | Execute a PayPal payment |
| [**post_make_payment_method_default**](AccountApi.md#post_make_payment_method_default) | **POST** /{apiVersion}/account/payment-methods/{paymentMethodId}/make-default | Set a default payment method |
| [**post_pay_pal_payment**](AccountApi.md#post_pay_pal_payment) | **POST** /{apiVersion}/account/payments/paypal | Stage a PayPal payment |
| [**post_payment**](AccountApi.md#post_payment) | **POST** /{apiVersion}/account/payments | Make a payment |
| [**post_payment_method**](AccountApi.md#post_payment_method) | **POST** /{apiVersion}/account/payment-methods | Add a payment method |
| [**post_promo_credit**](AccountApi.md#post_promo_credit) | **POST** /{apiVersion}/account/promo-codes | Add a promo credit |
| [**post_reset_client_secret**](AccountApi.md#post_reset_client_secret) | **POST** /{apiVersion}/account/oauth-clients/{clientId}/reset-secret | Reset an OAuth client secret |
| [**post_service_transfer**](AccountApi.md#post_service_transfer) | **POST** /{apiVersion}/account/service-transfers | Request a service transfer |
| [**post_user**](AccountApi.md#post_user) | **POST** /{apiVersion}/account/users | Create a user |
| [**put_account**](AccountApi.md#put_account) | **PUT** /{apiVersion}/account | Update your account |
| [**put_account_settings**](AccountApi.md#put_account_settings) | **PUT** /{apiVersion}/account/settings | Update account settings |
| [**put_client**](AccountApi.md#put_client) | **PUT** /{apiVersion}/account/oauth-clients/{clientId} | Update an OAuth client |
| [**put_client_thumbnail**](AccountApi.md#put_client_thumbnail) | **PUT** /{apiVersion}/account/oauth-clients/{clientId}/thumbnail | Update the OAuth client&#39;s thumbnail |
| [**put_user**](AccountApi.md#put_user) | **PUT** /{apiVersion}/account/users/{username} | Update a user |
| [**put_user_grants**](AccountApi.md#put_user_grants) | **PUT** /{apiVersion}/account/users/{username}/grants | Update a user&#39;s grants |


## delete_client

> Object delete_client(api_version, client_id)

Delete an OAuth client

Deletes an OAuth Client registered with Linode. The Client ID and Client secret will no longer be accepted by [login.linode.com](https://login.linode.com), and all tokens issued to this client will be invalidated (meaning that if your application was using a token, it will no longer work).   <<LB>>  ---   - __CLI__.      ```     linode-cli account client-delete \\   edc6790ea9db4d224c5c     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
client_id = 'client_id_example' # String | The OAuth Client ID to look up.

begin
  # Delete an OAuth client
  result = api_instance.delete_client(api_version, client_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_client: #{e}"
end
```

#### Using the delete_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_client_with_http_info(api_version, client_id)

```ruby
begin
  # Delete an OAuth client
  data, status_code, headers = api_instance.delete_client_with_http_info(api_version, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **client_id** | **String** | The OAuth Client ID to look up. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_entity_transfer

> Object delete_entity_transfer(api_version, token)

Cancel an entity transfer

__Deprecated__ Please run [Cancel a service transfer](https://techdocs.akamai.com/linode-api/reference/delete-service-transfer).   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
token = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The UUID of the Entity Transfer.

begin
  # Cancel an entity transfer
  result = api_instance.delete_entity_transfer(api_version, token)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_entity_transfer: #{e}"
end
```

#### Using the delete_entity_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_entity_transfer_with_http_info(api_version, token)

```ruby
begin
  # Cancel an entity transfer
  data, status_code, headers = api_instance.delete_entity_transfer_with_http_info(api_version, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_entity_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **token** | **String** | The UUID of the Entity Transfer. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_payment_method

> Object delete_payment_method(api_version, payment_method_id)

Delete a payment method

Deactivate the specified Payment Method.  The default Payment Method can not be deleted. To add a new default Payment Method, run the [Add a payment method](https://techdocs.akamai.com/linode-api/reference/post-payment-method) operation. To designate an existing Payment Method as the default method, run the [Set a default payment method](https://techdocs.akamai.com/linode-api/reference/post-make-payment-method-default) operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli payment-methods delete 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
payment_method_id = 56 # Integer | The ID of the Payment Method to look up.

begin
  # Delete a payment method
  result = api_instance.delete_payment_method(api_version, payment_method_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_payment_method: #{e}"
end
```

#### Using the delete_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_payment_method_with_http_info(api_version, payment_method_id)

```ruby
begin
  # Delete a payment method
  data, status_code, headers = api_instance.delete_payment_method_with_http_info(api_version, payment_method_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **payment_method_id** | **Integer** | The ID of the Payment Method to look up. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_service_transfer

> Object delete_service_transfer(api_version, token)

Cancel a service transfer

Cancels the Service Transfer for the provided token. Once canceled, a transfer cannot be accepted or otherwise acted on in any way. If canceled in error, the transfer must be [created](https://techdocs.akamai.com/linode-api/reference/post-service-transfer) again.  When canceled, an email notification for the cancellation is sent to the account that created this transfer. Transfers can not be canceled if they are expired or have been accepted.  This operation can only be accessed by the unrestricted users of the account that created this transfer.   <<LB>>  ---   - __CLI__.      ```     linode-cli service-transfers \\   cancel 123E4567-E89B-12D3-A456-426614174000     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
token = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The UUID of the Service Transfer.

begin
  # Cancel a service transfer
  result = api_instance.delete_service_transfer(api_version, token)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_service_transfer: #{e}"
end
```

#### Using the delete_service_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_service_transfer_with_http_info(api_version, token)

```ruby
begin
  # Cancel a service transfer
  data, status_code, headers = api_instance.delete_service_transfer_with_http_info(api_version, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_service_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **token** | **String** | The UUID of the Service Transfer. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user

> Object delete_user(api_version, username)

Delete a user

Deletes a user. The API immediately logs the user out and removes all of its `grants`.  __Note__. This operation can only be accessed by account users with _unrestricted_ access.  __Parent and child accounts__  In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - You can't delete a child account parent user (proxy user). The API returns a 403 error if you target a proxy user with this operation.  - A parent account using an unrestricted proxy user can use this operation to delete a child account user.   <<LB>>  ---   - __CLI__.      ```     linode-cli users delete example_user     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
username = 'username_example' # String | The username to look up.

begin
  # Delete a user
  result = api_instance.delete_user(api_version, username)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_user_with_http_info(api_version, username)

```ruby
begin
  # Delete a user
  data, status_code, headers = api_instance.delete_user_with_http_info(api_version, username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **username** | **String** | The username to look up. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account

> <GetAccount200Response> get_account(api_version)

Get your account

Returns the contact and billing information related to your Account.   <<LB>>  ---   - __CLI__.      ```     linode-cli account view     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Get your account
  result = api_instance.get_account(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccount200Response>, Integer, Hash)> get_account_with_http_info(api_version)

```ruby
begin
  # Get your account
  data, status_code, headers = api_instance.get_account_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccount200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetAccount200Response**](GetAccount200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_agreements

> <GetAccountAgreements200Response> get_account_agreements(api_version)

List agreements

Returns all agreements and their acceptance status for your account.   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List agreements
  result = api_instance.get_account_agreements(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_agreements: #{e}"
end
```

#### Using the get_account_agreements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountAgreements200Response>, Integer, Hash)> get_account_agreements_with_http_info(api_version)

```ruby
begin
  # List agreements
  data, status_code, headers = api_instance.get_account_agreements_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountAgreements200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_agreements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetAccountAgreements200Response**](GetAccountAgreements200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_availability

> <GetAccountAvailability200Response> get_account_availability(api_version, id)

Get a region's service availability

View the available services for your account in a specific region.  __Note__. Only authorized users can access this.   <<LB>>  ---   - __CLI__.      ```     linode-cli account get-account-availability us-east     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
id = 'id_example' # String | The slug for the applicable data center. Run the [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions) operation to view the slug for each data center.

begin
  # Get a region's service availability
  result = api_instance.get_account_availability(api_version, id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_availability: #{e}"
end
```

#### Using the get_account_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountAvailability200Response>, Integer, Hash)> get_account_availability_with_http_info(api_version, id)

```ruby
begin
  # Get a region's service availability
  data, status_code, headers = api_instance.get_account_availability_with_http_info(api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountAvailability200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **id** | **String** | The slug for the applicable data center. Run the [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions) operation to view the slug for each data center. |  |

### Return type

[**GetAccountAvailability200Response**](GetAccountAvailability200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_login

> <GetAccountLogin200Response> get_account_login(api_version, login_id)

Get an account login

Returns a Login object that displays information about a successful login. The logins that can be viewed can be for any user on the account, and are not limited to only the logins of the user that is accessing this API endpoint. This operation can only be accessed by the unrestricted users of the account.   <<LB>>  ---   - __CLI__.      ```     linode-cli account login-view 1234     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
login_id = 56 # Integer | The ID of the login object to access.

begin
  # Get an account login
  result = api_instance.get_account_login(api_version, login_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_login: #{e}"
end
```

#### Using the get_account_login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountLogin200Response>, Integer, Hash)> get_account_login_with_http_info(api_version, login_id)

```ruby
begin
  # Get an account login
  data, status_code, headers = api_instance.get_account_login_with_http_info(api_version, login_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountLogin200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **login_id** | **Integer** | The ID of the login object to access. |  |

### Return type

[**GetAccountLogin200Response**](GetAccountLogin200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_logins

> <GetAccountLogins200Response> get_account_logins(api_version)

List user logins

Returns a collection of successful logins for all users on the account during the last 90 days. This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli account logins-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List user logins
  result = api_instance.get_account_logins(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_logins: #{e}"
end
```

#### Using the get_account_logins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountLogins200Response>, Integer, Hash)> get_account_logins_with_http_info(api_version)

```ruby
begin
  # List user logins
  data, status_code, headers = api_instance.get_account_logins_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountLogins200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_logins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetAccountLogins200Response**](GetAccountLogins200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_settings

> <GetAccountSettings200Response> get_account_settings(api_version)

Get account settings

Returns information related to your Account settings: Managed service subscription, Longview subscription, and network helper.   <<LB>>  ---   - __CLI__.      ```     linode-cli account settings     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Get account settings
  result = api_instance.get_account_settings(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_settings: #{e}"
end
```

#### Using the get_account_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountSettings200Response>, Integer, Hash)> get_account_settings_with_http_info(api_version)

```ruby
begin
  # Get account settings
  data, status_code, headers = api_instance.get_account_settings_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountSettings200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetAccountSettings200Response**](GetAccountSettings200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_availability

> <GetAvailability200Response> get_availability(api_version, opts)

List available services

Returns a paginated list of the services available to you, for all Linode regions.  __Note__. Only authorized Users can run this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli account get-availability     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List available services
  result = api_instance.get_availability(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_availability: #{e}"
end
```

#### Using the get_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAvailability200Response>, Integer, Hash)> get_availability_with_http_info(api_version, opts)

```ruby
begin
  # List available services
  data, status_code, headers = api_instance.get_availability_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAvailability200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetAvailability200Response**](GetAvailability200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_child_account

> <GetChildAccount200Response> get_child_account(api_version, euuid)

Get a child account

View a specific child account based on its `euuid`. See [Parent and Child Accounts for Akamai Partners](https://www.linode.com/docs/guides/parent-child-accounts/) for details on these accounts.  __Note__. This operation can only be accessed by an unrestricted user, or restricted user with the `child_account_access` grant.   <<LB>>  ---   - __CLI__.      ```     linode-cli child-account view A1BC2DEF-34GH-567I-J890KLMN12O34P56     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     child_account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
euuid = 'euuid_example' # String | The child account to look up. You can run the [List child accounts](https://techdocs.akamai.com/linode-api/reference/get-child-accounts) operation to find the applicable account and store its `euuid`.

begin
  # Get a child account
  result = api_instance.get_child_account(api_version, euuid)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_child_account: #{e}"
end
```

#### Using the get_child_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChildAccount200Response>, Integer, Hash)> get_child_account_with_http_info(api_version, euuid)

```ruby
begin
  # Get a child account
  data, status_code, headers = api_instance.get_child_account_with_http_info(api_version, euuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChildAccount200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_child_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **euuid** | **String** | The child account to look up. You can run the [List child accounts](https://techdocs.akamai.com/linode-api/reference/get-child-accounts) operation to find the applicable account and store its &#x60;euuid&#x60;. |  |

### Return type

[**GetChildAccount200Response**](GetChildAccount200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_child_accounts

> <GetChildAccounts200Response> get_child_accounts(api_version, opts)

List child accounts

Returns a paginated list of basic information for the child accounts that exist for your parent account. See [Parent and Child Accounts for Akamai Partners](https://www.linode.com/docs/guides/parent-child-accounts/) for details on these accounts.  __Note__. This operation can only be accessed by an unrestricted parent user, or restricted parent user with the `child_account_access` grant.   <<LB>>  ---   - __CLI__.      ```     linode-cli child-account list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     child_account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List child accounts
  result = api_instance.get_child_accounts(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_child_accounts: #{e}"
end
```

#### Using the get_child_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChildAccounts200Response>, Integer, Hash)> get_child_accounts_with_http_info(api_version, opts)

```ruby
begin
  # List child accounts
  data, status_code, headers = api_instance.get_child_accounts_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChildAccounts200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_child_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetChildAccounts200Response**](GetChildAccounts200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_client

> <GetClient200Response> get_client(api_version, client_id)

Get an OAuth client

Returns information about a single OAuth client.   <<LB>>  ---   - __CLI__.      ```     linode-cli account client-view \\   edc6790ea9db4d224c5c     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
client_id = 'client_id_example' # String | The OAuth Client ID to look up.

begin
  # Get an OAuth client
  result = api_instance.get_client(api_version, client_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_client: #{e}"
end
```

#### Using the get_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetClient200Response>, Integer, Hash)> get_client_with_http_info(api_version, client_id)

```ruby
begin
  # Get an OAuth client
  data, status_code, headers = api_instance.get_client_with_http_info(api_version, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetClient200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **client_id** | **String** | The OAuth Client ID to look up. |  |

### Return type

[**GetClient200Response**](GetClient200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_client_thumbnail

> File get_client_thumbnail(api_version, client_id)

Get the OAuth client's thumbnail

Returns the thumbnail for this OAuth Client.  This is a publicly-viewable endpoint, and can be accessed without authentication.

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
client_id = 'client_id_example' # String | The OAuth Client ID to look up.

begin
  # Get the OAuth client's thumbnail
  result = api_instance.get_client_thumbnail(api_version, client_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_client_thumbnail: #{e}"
end
```

#### Using the get_client_thumbnail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_client_thumbnail_with_http_info(api_version, client_id)

```ruby
begin
  # Get the OAuth client's thumbnail
  data, status_code, headers = api_instance.get_client_thumbnail_with_http_info(api_version, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_client_thumbnail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **client_id** | **String** | The OAuth Client ID to look up. |  |

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png, application/json


## get_clients

> <GetClients200Response> get_clients(api_version, opts)

List OAuth clients

Returns a paginated list of OAuth Clients registered to your Account.  OAuth Clients allow users to log into applications you write or host using their Linode Account, and may allow them to grant some level of access to their Linodes or other entities to your application.   <<LB>>  ---   - __CLI__.      ```     linode-cli account clients-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List OAuth clients
  result = api_instance.get_clients(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_clients: #{e}"
end
```

#### Using the get_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetClients200Response>, Integer, Hash)> get_clients_with_http_info(api_version, opts)

```ruby
begin
  # List OAuth clients
  data, status_code, headers = api_instance.get_clients_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetClients200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_clients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetClients200Response**](GetClients200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_enrolled_beta_program

> <GetEnrolledBetaProgram200Response> get_enrolled_beta_program(api_version, beta_id)

Get an enrolled Beta program

Display an enrolled Beta Program for your Account. The Beta Program may be inactive.  Only unrestricted Users can access this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli betas enrolled-view $betaId     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
beta_id = 'beta_id_example' # String | The ID of the Beta Program.

begin
  # Get an enrolled Beta program
  result = api_instance.get_enrolled_beta_program(api_version, beta_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_enrolled_beta_program: #{e}"
end
```

#### Using the get_enrolled_beta_program_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEnrolledBetaProgram200Response>, Integer, Hash)> get_enrolled_beta_program_with_http_info(api_version, beta_id)

```ruby
begin
  # Get an enrolled Beta program
  data, status_code, headers = api_instance.get_enrolled_beta_program_with_http_info(api_version, beta_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEnrolledBetaProgram200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_enrolled_beta_program_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **beta_id** | **String** | The ID of the Beta Program. |  |

### Return type

[**GetEnrolledBetaProgram200Response**](GetEnrolledBetaProgram200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_enrolled_beta_programs

> <GetEnrolledBetaPrograms200Response> get_enrolled_beta_programs(api_version, opts)

List enrolled Beta programs

Display all enrolled Beta Programs for your Account. Includes inactive as well as active Beta Programs.  Only unrestricted Users can access this operation.   <<LB>>  ---   - __CLI__.      ```     linode-cli betas enrolled     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List enrolled Beta programs
  result = api_instance.get_enrolled_beta_programs(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_enrolled_beta_programs: #{e}"
end
```

#### Using the get_enrolled_beta_programs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEnrolledBetaPrograms200Response>, Integer, Hash)> get_enrolled_beta_programs_with_http_info(api_version, opts)

```ruby
begin
  # List enrolled Beta programs
  data, status_code, headers = api_instance.get_enrolled_beta_programs_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEnrolledBetaPrograms200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_enrolled_beta_programs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetEnrolledBetaPrograms200Response**](GetEnrolledBetaPrograms200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_transfer

> <GetEntityTransfer200Response> get_entity_transfer(api_version, token)

Get an entity transfer

__Deprecated__ Please run [Get a service transfer request](https://techdocs.akamai.com/linode-api/reference/get-service-transfer).   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
token = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The UUID of the Entity Transfer.

begin
  # Get an entity transfer
  result = api_instance.get_entity_transfer(api_version, token)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_entity_transfer: #{e}"
end
```

#### Using the get_entity_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEntityTransfer200Response>, Integer, Hash)> get_entity_transfer_with_http_info(api_version, token)

```ruby
begin
  # Get an entity transfer
  data, status_code, headers = api_instance.get_entity_transfer_with_http_info(api_version, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEntityTransfer200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_entity_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **token** | **String** | The UUID of the Entity Transfer. |  |

### Return type

[**GetEntityTransfer200Response**](GetEntityTransfer200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_transfers

> <GetEntityTransfers200Response> get_entity_transfers(api_version, opts)

List entity transfers

__Deprecated__ Please run [List service transfers](https://techdocs.akamai.com/linode-api/reference/get-service-transfers).   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List entity transfers
  result = api_instance.get_entity_transfers(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_entity_transfers: #{e}"
end
```

#### Using the get_entity_transfers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEntityTransfers200Response>, Integer, Hash)> get_entity_transfers_with_http_info(api_version, opts)

```ruby
begin
  # List entity transfers
  data, status_code, headers = api_instance.get_entity_transfers_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEntityTransfers200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_entity_transfers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetEntityTransfers200Response**](GetEntityTransfers200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_event

> <GetEvent200Response> get_event(api_version, event_id)

Get an event

Returns a single Event object.   <<LB>>  ---   - __CLI__.      ```     linode-cli events view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     events:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
event_id = 56 # Integer | The ID of the Event.

begin
  # Get an event
  result = api_instance.get_event(api_version, event_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEvent200Response>, Integer, Hash)> get_event_with_http_info(api_version, event_id)

```ruby
begin
  # Get an event
  data, status_code, headers = api_instance.get_event_with_http_info(api_version, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEvent200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **event_id** | **Integer** | The ID of the Event. |  |

### Return type

[**GetEvent200Response**](GetEvent200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events

> <GetEvents200Response> get_events(api_version, opts)

List events

Returns a collection of Event objects representing actions taken on your Account from the last 90 days. The Events returned depend on your grants.   <<LB>>  ---   - __CLI__.      ```     linode-cli events list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     events:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List events
  result = api_instance.get_events(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_events: #{e}"
end
```

#### Using the get_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEvents200Response>, Integer, Hash)> get_events_with_http_info(api_version, opts)

```ruby
begin
  # List events
  data, status_code, headers = api_instance.get_events_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEvents200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetEvents200Response**](GetEvents200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invoice

> <GetInvoice200Response> get_invoice(api_version, invoice_id)

Get an invoice

Returns a single Invoice object.   <<LB>>  ---   - __CLI__.      ```     linode-cli account invoice-view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
invoice_id = 56 # Integer | The ID of the Invoice.

begin
  # Get an invoice
  result = api_instance.get_invoice(api_version, invoice_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_invoice: #{e}"
end
```

#### Using the get_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInvoice200Response>, Integer, Hash)> get_invoice_with_http_info(api_version, invoice_id)

```ruby
begin
  # Get an invoice
  data, status_code, headers = api_instance.get_invoice_with_http_info(api_version, invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInvoice200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **invoice_id** | **Integer** | The ID of the Invoice. |  |

### Return type

[**GetInvoice200Response**](GetInvoice200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invoice_items

> <GetInvoiceItems200Response> get_invoice_items(api_version, invoice_id, opts)

List invoice items

Returns a paginated list of Invoice items.   <<LB>>  ---   - __CLI__.      ```     linode-cli account invoice-items 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
invoice_id = 56 # Integer | The ID of the Invoice.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List invoice items
  result = api_instance.get_invoice_items(api_version, invoice_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_invoice_items: #{e}"
end
```

#### Using the get_invoice_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInvoiceItems200Response>, Integer, Hash)> get_invoice_items_with_http_info(api_version, invoice_id, opts)

```ruby
begin
  # List invoice items
  data, status_code, headers = api_instance.get_invoice_items_with_http_info(api_version, invoice_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInvoiceItems200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_invoice_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **invoice_id** | **Integer** | The ID of the Invoice. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetInvoiceItems200Response**](GetInvoiceItems200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invoices

> <GetInvoices200Response> get_invoices(api_version, opts)

List invoices

Returns a paginated list of Invoices against your Account.   <<LB>>  ---   - __CLI__.      ```     linode-cli account invoices-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List invoices
  result = api_instance.get_invoices(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_invoices: #{e}"
end
```

#### Using the get_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInvoices200Response>, Integer, Hash)> get_invoices_with_http_info(api_version, opts)

```ruby
begin
  # List invoices
  data, status_code, headers = api_instance.get_invoices_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInvoices200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetInvoices200Response**](GetInvoices200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_maintenance

> <GetMaintenance200Response> get_maintenance(api_version)

List maintenances

Returns a collection of Maintenance objects for any entity a user has permissions to view. Canceled Maintenance objects are not returned.  Currently, Linodes are the only entities available for viewing.   <<LB>>  ---   - __CLI__.      ```     linode-cli account maintenance-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List maintenances
  result = api_instance.get_maintenance(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_maintenance: #{e}"
end
```

#### Using the get_maintenance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMaintenance200Response>, Integer, Hash)> get_maintenance_with_http_info(api_version)

```ruby
begin
  # List maintenances
  data, status_code, headers = api_instance.get_maintenance_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMaintenance200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_maintenance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetMaintenance200Response**](GetMaintenance200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notifications

> <GetNotifications200Response> get_notifications(api_version)

List notifications

Returns a collection of Notification objects representing important, often time-sensitive items related to your Account. You cannot interact directly with Notifications, and a Notification will disappear when the circumstances causing it have been resolved. For example, if you have an important Ticket open, you must respond to the Ticket to dismiss the Notification.   <<LB>>  ---   - __CLI__.      ```     linode-cli account notifications-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List notifications
  result = api_instance.get_notifications(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_notifications: #{e}"
end
```

#### Using the get_notifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNotifications200Response>, Integer, Hash)> get_notifications_with_http_info(api_version)

```ruby
begin
  # List notifications
  data, status_code, headers = api_instance.get_notifications_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNotifications200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_notifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetNotifications200Response**](GetNotifications200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment

> <GetPayments200ResponseDataInner> get_payment(api_version, payment_id)

Get a payment

Returns information about a specific Payment.   <<LB>>  ---   - __CLI__.      ```     linode-cli account payment-view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
payment_id = 56 # Integer | The ID of the Payment to look up.

begin
  # Get a payment
  result = api_instance.get_payment(api_version, payment_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_payment: #{e}"
end
```

#### Using the get_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayments200ResponseDataInner>, Integer, Hash)> get_payment_with_http_info(api_version, payment_id)

```ruby
begin
  # Get a payment
  data, status_code, headers = api_instance.get_payment_with_http_info(api_version, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayments200ResponseDataInner>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **payment_id** | **Integer** | The ID of the Payment to look up. |  |

### Return type

[**GetPayments200ResponseDataInner**](GetPayments200ResponseDataInner.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_method

> <GetPaymentMethod200Response> get_payment_method(api_version, payment_method_id)

Get a payment method

View the details of the specified Payment Method.   <<LB>>  ---   - __CLI__.      ```     linode-cli payment-methods view 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
payment_method_id = 56 # Integer | The ID of the Payment Method to look up.

begin
  # Get a payment method
  result = api_instance.get_payment_method(api_version, payment_method_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_payment_method: #{e}"
end
```

#### Using the get_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentMethod200Response>, Integer, Hash)> get_payment_method_with_http_info(api_version, payment_method_id)

```ruby
begin
  # Get a payment method
  data, status_code, headers = api_instance.get_payment_method_with_http_info(api_version, payment_method_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentMethod200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **payment_method_id** | **Integer** | The ID of the Payment Method to look up. |  |

### Return type

[**GetPaymentMethod200Response**](GetPaymentMethod200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_methods

> <GetPaymentMethods200Response> get_payment_methods(api_version, opts)

List payment methods

Returns a paginated list of Payment Methods for this Account.   <<LB>>  ---   - __CLI__.      ```     linode-cli payment-methods list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List payment methods
  result = api_instance.get_payment_methods(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_payment_methods: #{e}"
end
```

#### Using the get_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentMethods200Response>, Integer, Hash)> get_payment_methods_with_http_info(api_version, opts)

```ruby
begin
  # List payment methods
  data, status_code, headers = api_instance.get_payment_methods_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentMethods200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetPaymentMethods200Response**](GetPaymentMethods200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payments

> <GetPayments200Response> get_payments(api_version, opts)

List payments

Returns a paginated list of Payments made on this Account.   <<LB>>  ---   - __CLI__.      ```     linode-cli account payments-list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List payments
  result = api_instance.get_payments(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_payments: #{e}"
end
```

#### Using the get_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayments200Response>, Integer, Hash)> get_payments_with_http_info(api_version, opts)

```ruby
begin
  # List payments
  data, status_code, headers = api_instance.get_payments_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayments200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetPayments200Response**](GetPayments200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_service_transfer

> <GetServiceTransfer200Response> get_service_transfer(api_version, token)

Get a service transfer request

Returns the details of the Service Transfer for the provided token.  While a transfer is pending, any unrestricted user _of any account_ can access this operation. After a transfer has been accepted, it can only be viewed by unrestricted users of the accounts that created and accepted the transfer. If canceled or expired, only unrestricted users of the account that created the transfer can view it.   <<LB>>  ---   - __CLI__.      ```     linode-cli service-transfers \\   view 123E4567-E89B-12D3-A456-426614174000     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
token = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The UUID of the Service Transfer.

begin
  # Get a service transfer request
  result = api_instance.get_service_transfer(api_version, token)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_service_transfer: #{e}"
end
```

#### Using the get_service_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetServiceTransfer200Response>, Integer, Hash)> get_service_transfer_with_http_info(api_version, token)

```ruby
begin
  # Get a service transfer request
  data, status_code, headers = api_instance.get_service_transfer_with_http_info(api_version, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetServiceTransfer200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_service_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **token** | **String** | The UUID of the Service Transfer. |  |

### Return type

[**GetServiceTransfer200Response**](GetServiceTransfer200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_service_transfers

> <GetServiceTransfers200Response> get_service_transfers(api_version, opts)

List service transfers

Returns a collection of all created and accepted Service Transfers for this account, regardless of the user that created or accepted the transfer.  This operation can only be accessed by the unrestricted users of an account.   <<LB>>  ---   - __CLI__.      ```     linode-cli service-transfers \\   list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List service transfers
  result = api_instance.get_service_transfers(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_service_transfers: #{e}"
end
```

#### Using the get_service_transfers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetServiceTransfers200Response>, Integer, Hash)> get_service_transfers_with_http_info(api_version, opts)

```ruby
begin
  # List service transfers
  data, status_code, headers = api_instance.get_service_transfers_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetServiceTransfers200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_service_transfers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetServiceTransfers200Response**](GetServiceTransfers200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transfer

> <GetTransfer200Response> get_transfer(api_version)

Get network usage

Returns a Transfer object showing your network utilization, in GB, for the current month.   <<LB>>  ---   - __CLI__.      ```     linode-cli account transfer     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Get network usage
  result = api_instance.get_transfer(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_transfer: #{e}"
end
```

#### Using the get_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransfer200Response>, Integer, Hash)> get_transfer_with_http_info(api_version)

```ruby
begin
  # Get network usage
  data, status_code, headers = api_instance.get_transfer_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransfer200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetTransfer200Response**](GetTransfer200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <GetUser200Response> get_user(api_version, username)

Get a user

Returns information about a single user on your account.  __Note__. This operation can only be accessed by account users with _unrestricted_ access.   <<LB>>  ---   - __CLI__.      ```     linode-cli users view example_user     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
username = 'username_example' # String | The username to look up.

begin
  # Get a user
  result = api_instance.get_user(api_version, username)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUser200Response>, Integer, Hash)> get_user_with_http_info(api_version, username)

```ruby
begin
  # Get a user
  data, status_code, headers = api_instance.get_user_with_http_info(api_version, username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUser200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **username** | **String** | The username to look up. |  |

### Return type

[**GetUser200Response**](GetUser200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_grants

> <GetUserGrants200Response> get_user_grants(api_version, username)

List a user's grants

Returns the full grants structure for an account username you specify. This includes all entities on the account, and the level of access this user has to each of them.  This doesn't apply to the account owner or the current authenticated user. You can run the [List grants](https://techdocs.akamai.com/linode-api/reference/get-profile-grants) operation to view those grants. However, this doesn't show the entities that they _don't_ have access to.  __Note__. This operation can only be accessed by account users with _unrestricted_ access.   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
username = 'username_example' # String | The username to look up.

begin
  # List a user's grants
  result = api_instance.get_user_grants(api_version, username)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_user_grants: #{e}"
end
```

#### Using the get_user_grants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserGrants200Response>, Integer, Hash)> get_user_grants_with_http_info(api_version, username)

```ruby
begin
  # List a user's grants
  data, status_code, headers = api_instance.get_user_grants_with_http_info(api_version, username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserGrants200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_user_grants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **username** | **String** | The username to look up. |  |

### Return type

[**GetUserGrants200Response**](GetUserGrants200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> <GetUsers200Response> get_users(api_version, opts)

List users

Returns a paginated list of all users on your account.  __Note__. This operation can only be accessed by account users with _unrestricted_ access.  A user can access all or part of an account based on their access status and grants:  - __Unrestricted access__. These users can access everything on an account.  - __Restricted access__. These users can only access entities or perform actions they've been given specific grants to.   <<LB>>  ---   - __CLI__.      ```     linode-cli users list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List users
  result = api_instance.get_users(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_users: #{e}"
end
```

#### Using the get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUsers200Response>, Integer, Hash)> get_users_with_http_info(api_version, opts)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.get_users_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUsers200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetUsers200Response**](GetUsers200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_accept_entity_transfer

> Object post_accept_entity_transfer(api_version, token)

Accept an entity transfer

__Deprecated__ Please run [Accept a service transfer](https://techdocs.akamai.com/linode-api/reference/post-accept-service-transfer).   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
token = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The UUID of the Entity Transfer.

begin
  # Accept an entity transfer
  result = api_instance.post_accept_entity_transfer(api_version, token)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_accept_entity_transfer: #{e}"
end
```

#### Using the post_accept_entity_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_accept_entity_transfer_with_http_info(api_version, token)

```ruby
begin
  # Accept an entity transfer
  data, status_code, headers = api_instance.post_accept_entity_transfer_with_http_info(api_version, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_accept_entity_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **token** | **String** | The UUID of the Entity Transfer. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_accept_service_transfer

> Object post_accept_service_transfer(api_version, token)

Accept a service transfer

Accept a Service Transfer for the provided token to receive the services included in the transfer to your account. At this time, only Linodes can be transferred.  When accepted, email confirmations are sent to the accounts that created and accepted the transfer. A transfer can take up to three hours to complete once accepted. Once a transfer is completed, billing for transferred services ends for the sending account and begins for the receiving account.  This operation can only be accessed by the unrestricted users of the account that receives the transfer. Users of the same account that created a transfer cannot accept the transfer.  There are several conditions that must be met in order to accept a transfer request:  1. Only transfers with a `pending` status can be accepted.  1. The account accepting the transfer must have a registered payment method and must not have a past due balance or other account limitations for the services to be transferred.  1. Both the account that created the transfer and the account that is accepting the transfer must not have any active Terms of Service violations.  1. The service must still be owned by the account that created the transfer.  1. Linodes must not:      - be assigned to a NodeBalancer, Firewall, VLAN, or Managed Service.      - have any attached Block Storage Volumes.      - have any shared IP addresses.      - have any assigned /56, /64, or /116 IPv6 ranges.  Any and all of the above conditions must be cured and maintained by the relevant account prior to the transfer's expiration to allow the transfer to be accepted by the receiving account.   <<LB>>  ---   - __CLI__.      ```     linode-cli service-transfers \\   accept 123E4567-E89B-12D3-A456-426614174000     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
token = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The UUID of the Service Transfer.

begin
  # Accept a service transfer
  result = api_instance.post_accept_service_transfer(api_version, token)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_accept_service_transfer: #{e}"
end
```

#### Using the post_accept_service_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_accept_service_transfer_with_http_info(api_version, token)

```ruby
begin
  # Accept a service transfer
  data, status_code, headers = api_instance.post_accept_service_transfer_with_http_info(api_version, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_accept_service_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **token** | **String** | The UUID of the Service Transfer. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_account_agreements

> Object post_account_agreements(api_version, post_account_agreements_request)

Acknowledge agreements

Accept required agreements by setting them to `true`. This remains until the content of the agreement changes. If it does, you need to run this operation again to accept it. If you set this to `false`, the API rejects the request and you need to open a [support ticket](https://techdocs.akamai.com/linode-api/reference/post-ticket) to reset the agreement. Omitted agreements are left unchanged.   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_account_agreements_request = LinodeOpenapiClient::PostAccountAgreementsRequest.new # PostAccountAgreementsRequest | 

begin
  # Acknowledge agreements
  result = api_instance.post_account_agreements(api_version, post_account_agreements_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_account_agreements: #{e}"
end
```

#### Using the post_account_agreements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_account_agreements_with_http_info(api_version, post_account_agreements_request)

```ruby
begin
  # Acknowledge agreements
  data, status_code, headers = api_instance.post_account_agreements_with_http_info(api_version, post_account_agreements_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_account_agreements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_account_agreements_request** | [**PostAccountAgreementsRequest**](PostAccountAgreementsRequest.md) |  |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_beta_program

> Object post_beta_program(api_version, post_beta_program_request)

Enroll in a Beta program

Enroll your Account in an active Beta Program.  Only unrestricted Users can access this operation.  To view active Beta Programs, run the [List beta programs](https://techdocs.akamai.com/linode-api/reference/get-beta-programs) operation.  Active Beta Programs may have a limited number of enrollments. If a Beta Program has reached is maximum number of enrollments, an error is returned even though the request is successful.  Beta Programs with `\"greenlight_only\": true` can only be enrolled by Accounts that participate in the [Greenlight](https://www.linode.com/green-light/) program.   <<LB>>  ---   - __CLI__.      ```     linode-cli betas enroll --id example_open     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_beta_program_request = LinodeOpenapiClient::PostBetaProgramRequest.new({id: 'example_open'}) # PostBetaProgramRequest | Updated information for the Managed MySQL Database.

begin
  # Enroll in a Beta program
  result = api_instance.post_beta_program(api_version, post_beta_program_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_beta_program: #{e}"
end
```

#### Using the post_beta_program_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_beta_program_with_http_info(api_version, post_beta_program_request)

```ruby
begin
  # Enroll in a Beta program
  data, status_code, headers = api_instance.post_beta_program_with_http_info(api_version, post_beta_program_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_beta_program_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_beta_program_request** | [**PostBetaProgramRequest**](PostBetaProgramRequest.md) | Updated information for the Managed MySQL Database. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_cancel_account

> <PostCancelAccount200Response> post_cancel_account(api_version, post_cancel_account_request)

Cancel your account

Cancels an active Linode account. Akamai attempts to charge the credit card on file for any remaining balance. An error occurs if this charge fails.  __Note__. This operation can only be accessed by account users with _unrestricted_ access.  __Parent and child accounts__ In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - A child account user can't cancel a child account. - You can't cancel a parent account if it has an active child account. - You need to work with your Akamai account team to dissolve any parent-child account relationships before you can fully cancel a child or parent account.   <<LB>>  ---   - __CLI__.      ```     linode-cli account cancel \\   --comments \"I'm consolidating my accounts\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_cancel_account_request = LinodeOpenapiClient::PostCancelAccountRequest.new # PostCancelAccountRequest | Supply a comment stating the reason that you are cancelling your account.

begin
  # Cancel your account
  result = api_instance.post_cancel_account(api_version, post_cancel_account_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_cancel_account: #{e}"
end
```

#### Using the post_cancel_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCancelAccount200Response>, Integer, Hash)> post_cancel_account_with_http_info(api_version, post_cancel_account_request)

```ruby
begin
  # Cancel your account
  data, status_code, headers = api_instance.post_cancel_account_with_http_info(api_version, post_cancel_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCancelAccount200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_cancel_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_cancel_account_request** | [**PostCancelAccountRequest**](PostCancelAccountRequest.md) | Supply a comment stating the reason that you are cancelling your account. |  |

### Return type

[**PostCancelAccount200Response**](PostCancelAccount200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_child_account_token

> <PostChildAccountToken200Response> post_child_account_token(api_version, euuid)

Create a proxy user token

Create a short-lived bearer token for a parent user on a child account, using the `euuid` of that child account. In the context of the API, a parent user on a child account is referred to as a \"proxy user.\" When Akamai provisions your parent-child account environment, a proxy user is automatically set in the child account. It follows a specific naming convention:      <Parent account `company` name>_<SHA256 hash of parent `company` name and child account `euuid`>  __Note__. The variables above use only the first 15 and 16 characters of these values, respectively.  The token lets a parent account run API operations through the proxy user, as if they are a child user in the child account.  These points apply to the use of this operation:  - To create a token, a parent account user needs the `child_account_access` grant. This lets them use the proxy user on the child account. You can run [List a user's grants](https://techdocs.akamai.com/linode-api/reference/get-user-grants) on a parent account user to check its `child_account_access` setting. To add this access, you can [update](https://techdocs.akamai.com/linode-api/reference/put-user-grants) the parent account user.  - The created token inherits the permissions of the proxy user. It will never have less.  - The API returns the raw token in the response. You can't get it again, so be sure to store it.  Example workflow:  1. [List child accounts](https://techdocs.akamai.com/linode-api/reference/get-child-accounts) and store the `euuid` for the applicable one. 2. Run this operation and store the `token` that's created for the proxy user. 3. As a parent account user with access to the proxy user in the child account, use this `token` to authenticate API operations, as if you were a child user.   <<LB>>  ---   - __CLI__.      ```     linode-cli child-account create A1BC2DEF-34GH-567I-J890KLMN12O34P56     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     child_account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
euuid = 'euuid_example' # String | The child account to look up. You can run the [List child accounts](https://techdocs.akamai.com/linode-api/reference/get-child-accounts) operation to find the applicable account and store its `euuid`.

begin
  # Create a proxy user token
  result = api_instance.post_child_account_token(api_version, euuid)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_child_account_token: #{e}"
end
```

#### Using the post_child_account_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostChildAccountToken200Response>, Integer, Hash)> post_child_account_token_with_http_info(api_version, euuid)

```ruby
begin
  # Create a proxy user token
  data, status_code, headers = api_instance.post_child_account_token_with_http_info(api_version, euuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostChildAccountToken200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_child_account_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **euuid** | **String** | The child account to look up. You can run the [List child accounts](https://techdocs.akamai.com/linode-api/reference/get-child-accounts) operation to find the applicable account and store its &#x60;euuid&#x60;. |  |

### Return type

[**PostChildAccountToken200Response**](PostChildAccountToken200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_client

> <PostClient200Response> post_client(api_version, opts)

Create an OAuth client

Creates an OAuth Client, which can be used to allow users (using their Linode account) to log in to your own application, and optionally grant your application some amount of access to their Linodes or other entities.   <<LB>>  ---   - __CLI__.      ```     linode-cli account client-create \\   --label Test_Client_1 \\   --redirect_uri https://example.org/callback     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_client_request: LinodeOpenapiClient::PostClientRequest.new({redirect_uri: 'https://example.org/oauth/callback', label: 'Test_Client_1'}) # PostClientRequest | Information about the OAuth Client to create.
}

begin
  # Create an OAuth client
  result = api_instance.post_client(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_client: #{e}"
end
```

#### Using the post_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostClient200Response>, Integer, Hash)> post_client_with_http_info(api_version, opts)

```ruby
begin
  # Create an OAuth client
  data, status_code, headers = api_instance.post_client_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostClient200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_client_request** | [**PostClientRequest**](PostClientRequest.md) | Information about the OAuth Client to create. | [optional] |

### Return type

[**PostClient200Response**](PostClient200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_credit_card

> Object post_credit_card(api_version, post_credit_card_request)

Add or edit a credit card

__Deprecated__ Please run [Add a payment method](https://techdocs.akamai.com/linode-api/reference/post-payment-method).  Adds a credit card Payment Method to your account and sets it as the default method.   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_credit_card_request = LinodeOpenapiClient::PostCreditCardRequest.new({expiry_year: 2020, cvv: '123', card_number: '4111111111111111', expiry_month: 12}) # PostCreditCardRequest | Update the credit card information associated with your Account.

begin
  # Add or edit a credit card
  result = api_instance.post_credit_card(api_version, post_credit_card_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_credit_card: #{e}"
end
```

#### Using the post_credit_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_credit_card_with_http_info(api_version, post_credit_card_request)

```ruby
begin
  # Add or edit a credit card
  data, status_code, headers = api_instance.post_credit_card_with_http_info(api_version, post_credit_card_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_credit_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_credit_card_request** | [**PostCreditCardRequest**](PostCreditCardRequest.md) | Update the credit card information associated with your Account. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_enable_account_managed

> Object post_enable_account_managed(api_version)

Enable Linode Managed

Enables Linode Managed for the entire account and sends a welcome email to the account's associated email address. Linode Managed can monitor any service or software stack reachable over TCP or HTTP. See our [Linode Managed guide](https://www.linode.com/docs/guides/linode-managed/) to learn more.   <<LB>>  ---   - __CLI__.      ```     linode-cli account enable-managed     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # Enable Linode Managed
  result = api_instance.post_enable_account_managed(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_enable_account_managed: #{e}"
end
```

#### Using the post_enable_account_managed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_enable_account_managed_with_http_info(api_version)

```ruby
begin
  # Enable Linode Managed
  data, status_code, headers = api_instance.post_enable_account_managed_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_enable_account_managed_with_http_info: #{e}"
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


## post_entity_transfer

> <PostEntityTransfer200Response> post_entity_transfer(api_version, opts)

Create an entity transfer

__Deprecated__ Please run [Request a service transfer](https://techdocs.akamai.com/linode-api/reference/post-service-transfer).   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_entity_transfer_request: LinodeOpenapiClient::PostEntityTransferRequest.new({entities: LinodeOpenapiClient::GetEntityTransfers200ResponseAllOfDataInnerEntities.new}) # PostEntityTransferRequest | The entities to include in this transfer request.
}

begin
  # Create an entity transfer
  result = api_instance.post_entity_transfer(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_entity_transfer: #{e}"
end
```

#### Using the post_entity_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostEntityTransfer200Response>, Integer, Hash)> post_entity_transfer_with_http_info(api_version, opts)

```ruby
begin
  # Create an entity transfer
  data, status_code, headers = api_instance.post_entity_transfer_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostEntityTransfer200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_entity_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_entity_transfer_request** | [**PostEntityTransferRequest**](PostEntityTransferRequest.md) | The entities to include in this transfer request. | [optional] |

### Return type

[**PostEntityTransfer200Response**](PostEntityTransfer200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_event_read

> Object post_event_read(api_version, event_id)

Mark an event as read

Marks a single Event as read.   <<LB>>  ---   - __CLI__.      ```     linode-cli events mark-read 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     events:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
event_id = 56 # Integer | The ID of the Event to designate as read.

begin
  # Mark an event as read
  result = api_instance.post_event_read(api_version, event_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_event_read: #{e}"
end
```

#### Using the post_event_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_event_read_with_http_info(api_version, event_id)

```ruby
begin
  # Mark an event as read
  data, status_code, headers = api_instance.post_event_read_with_http_info(api_version, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_event_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **event_id** | **Integer** | The ID of the Event to designate as read. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_event_seen

> Object post_event_seen(api_version, event_id)

Mark an event as seen

Marks all Events up to and including this Event by ID as seen.   <<LB>>  ---   - __CLI__.      ```     linode-cli events mark-seen 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     events:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
event_id = 56 # Integer | The ID of the Event to designate as seen.

begin
  # Mark an event as seen
  result = api_instance.post_event_seen(api_version, event_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_event_seen: #{e}"
end
```

#### Using the post_event_seen_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_event_seen_with_http_info(api_version, event_id)

```ruby
begin
  # Mark an event as seen
  data, status_code, headers = api_instance.post_event_seen_with_http_info(api_version, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_event_seen_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **event_id** | **Integer** | The ID of the Event to designate as seen. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_execute_pay_pal_payment

> Object post_execute_pay_pal_payment(api_version, post_execute_pay_pal_payment_request)

Execute a PayPal payment

__Deprecated__ This operation is disabled and no longer accessible. PayPal can be designated as a Payment Method for automated payments using the Cloud Manager. See [Manage Payment Methods](https://www.linode.com/docs/products/platform/billing/guides/payment-methods/).   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_execute_pay_pal_payment_request = LinodeOpenapiClient::PostExecutePayPalPaymentRequest.new({payer_id: 'ABCDEFGHIJKLM', payment_id: 'PAY-1234567890ABCDEFGHIJKLMN'}) # PostExecutePayPalPaymentRequest | The details of the Payment to execute.

begin
  # Execute a PayPal payment
  result = api_instance.post_execute_pay_pal_payment(api_version, post_execute_pay_pal_payment_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_execute_pay_pal_payment: #{e}"
end
```

#### Using the post_execute_pay_pal_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_execute_pay_pal_payment_with_http_info(api_version, post_execute_pay_pal_payment_request)

```ruby
begin
  # Execute a PayPal payment
  data, status_code, headers = api_instance.post_execute_pay_pal_payment_with_http_info(api_version, post_execute_pay_pal_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_execute_pay_pal_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_execute_pay_pal_payment_request** | [**PostExecutePayPalPaymentRequest**](PostExecutePayPalPaymentRequest.md) | The details of the Payment to execute. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_make_payment_method_default

> Object post_make_payment_method_default(api_version, payment_method_id)

Set a default payment method

Make the specified Payment Method the default method for automatically processing payments. Removes the default status from any other Payment Method.  __Parent and child accounts__  In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - Child account users can't run this operation. These users don't have access to billing-related operations.   <<LB>>  ---   - __CLI__.      ```     linode-cli payment-methods default 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
payment_method_id = 56 # Integer | The ID of the Payment Method to make default.

begin
  # Set a default payment method
  result = api_instance.post_make_payment_method_default(api_version, payment_method_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_make_payment_method_default: #{e}"
end
```

#### Using the post_make_payment_method_default_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_make_payment_method_default_with_http_info(api_version, payment_method_id)

```ruby
begin
  # Set a default payment method
  data, status_code, headers = api_instance.post_make_payment_method_default_with_http_info(api_version, payment_method_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_make_payment_method_default_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **payment_method_id** | **Integer** | The ID of the Payment Method to make default. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_pay_pal_payment

> <PostPayPalPayment200Response> post_pay_pal_payment(api_version, post_pay_pal_payment_request)

Stage a PayPal payment

__Deprecated__ This operation is disabled and no longer accessible. PayPal can be designated as a Payment Method for automated payments using the Cloud Manager. See [Manage Payment Methods](https://www.linode.com/docs/products/platform/billing/guides/payment-methods/).   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_pay_pal_payment_request = LinodeOpenapiClient::PostPayPalPaymentRequest.new({cancel_url: 'https://example.org', redirect_url: 'https://example.org', usd: '120.50'}) # PostPayPalPaymentRequest | The amount of the Payment to submit via PayPal.

begin
  # Stage a PayPal payment
  result = api_instance.post_pay_pal_payment(api_version, post_pay_pal_payment_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_pay_pal_payment: #{e}"
end
```

#### Using the post_pay_pal_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostPayPalPayment200Response>, Integer, Hash)> post_pay_pal_payment_with_http_info(api_version, post_pay_pal_payment_request)

```ruby
begin
  # Stage a PayPal payment
  data, status_code, headers = api_instance.post_pay_pal_payment_with_http_info(api_version, post_pay_pal_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostPayPalPayment200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_pay_pal_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_pay_pal_payment_request** | [**PostPayPalPaymentRequest**](PostPayPalPaymentRequest.md) | The amount of the Payment to submit via PayPal. |  |

### Return type

[**PostPayPalPayment200Response**](PostPayPalPayment200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_payment

> <PostPayment200Response> post_payment(api_version, post_payment_request)

Make a payment

Makes a Payment to your Account.  - The requested amount is charged to the default Payment Method if no `payment_method_id` is specified.  - A `payment_submitted` event is generated when a payment is successfully submitted.  __Parent and child accounts__  In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - Child account users can't run this operation. These users don't have access to billing-related operations.   <<LB>>  ---   - __CLI__.      ```     linode-cli account payment-create \\   --usd 120.50 \\   --payment_method_id 123     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_payment_request = LinodeOpenapiClient::PostPaymentRequest.new # PostPaymentRequest | Information about the Payment you are making.

begin
  # Make a payment
  result = api_instance.post_payment(api_version, post_payment_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_payment: #{e}"
end
```

#### Using the post_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostPayment200Response>, Integer, Hash)> post_payment_with_http_info(api_version, post_payment_request)

```ruby
begin
  # Make a payment
  data, status_code, headers = api_instance.post_payment_with_http_info(api_version, post_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostPayment200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_payment_request** | [**PostPaymentRequest**](PostPaymentRequest.md) | Information about the Payment you are making. |  |

### Return type

[**PostPayment200Response**](PostPayment200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_payment_method

> Object post_payment_method(api_version, post_payment_method_request)

Add a payment method

Adds a Payment Method to your Account with the option to set it as the default method.  - Adding a default Payment Method removes the default status from any other Payment Method.  - An Account can have up to 6 active Payment Methods.  - Up to 60 Payment Methods can be added each day.  - Prior to adding a Payment Method, ensure that your billing address information is up-to-date with a valid `zip` by running the [Update your account](https://techdocs.akamai.com/linode-api/reference/put-account) operation.  - A `payment_method_add` event is generated when a payment is successfully submitted.  __Parent and child accounts__  In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - Child account users can't run this operation. These users don't have access to billing-related operations.   <<LB>>  ---   - __CLI__.      ```     linode-cli payment-methods add \\   --type credit_card \\   --is_default true \\   --data.card_number 4111111111111111 \\   --data.expiry_month 11 \\   --data.expiry_year 2020 \\   --data.cvv 111     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
post_payment_method_request = LinodeOpenapiClient::PostPaymentMethodRequest.new({is_default: true, data: LinodeOpenapiClient::PostCreditCardRequest.new({expiry_year: 2020, cvv: '123', card_number: '4111111111111111', expiry_month: 12}), type: 'credit_card'}) # PostPaymentMethodRequest | The details of the Payment Method to add.

begin
  # Add a payment method
  result = api_instance.post_payment_method(api_version, post_payment_method_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_payment_method: #{e}"
end
```

#### Using the post_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_payment_method_with_http_info(api_version, post_payment_method_request)

```ruby
begin
  # Add a payment method
  data, status_code, headers = api_instance.post_payment_method_with_http_info(api_version, post_payment_method_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_payment_method_request** | [**PostPaymentMethodRequest**](PostPaymentMethodRequest.md) | The details of the Payment Method to add. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_promo_credit

> <PostPromoCredit200Response> post_promo_credit(api_version, opts)

Add a promo credit

Adds an expiring Promo Credit to your account. The following restrictions apply:  - Your account needs to be less than 90 days old.  - You can't already have a Promo Credit on your account.  - The user making the request needs to be unrestricted. You can run the [Update a user](https://techdocs.akamai.com/linode-api/reference/put-user) operation to change a user's restricted status.  - The `promo_code` needs to be valid and unexpired.  __Parent and child accounts__  In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - Child account users can't run this operation. These users don't have access to billing-related operations.   <<LB>>  ---   - __CLI__.      ```     linode-cli account \\   promo-add \\   --promo-code abcdefABCDEF1234567890     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_promo_credit_request: LinodeOpenapiClient::PostPromoCreditRequest.new({promo_code: 'promo_code_example'}) # PostPromoCreditRequest | Enter a Promo Code to add its associated credit to your Account.
}

begin
  # Add a promo credit
  result = api_instance.post_promo_credit(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_promo_credit: #{e}"
end
```

#### Using the post_promo_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostPromoCredit200Response>, Integer, Hash)> post_promo_credit_with_http_info(api_version, opts)

```ruby
begin
  # Add a promo credit
  data, status_code, headers = api_instance.post_promo_credit_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostPromoCredit200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_promo_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_promo_credit_request** | [**PostPromoCreditRequest**](PostPromoCreditRequest.md) | Enter a Promo Code to add its associated credit to your Account. | [optional] |

### Return type

[**PostPromoCredit200Response**](PostPromoCredit200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_reset_client_secret

> <PostResetClientSecret200Response> post_reset_client_secret(api_version, client_id)

Reset an OAuth client secret

Resets the OAuth Client secret for a client you own, and returns the OAuth Client with the plaintext secret. This secret is not supposed to be publicly known or disclosed anywhere. This can be used to generate a new secret in case the one you have has been leaked, or to get a new secret if you lost the original. The old secret is expired immediately, and logins to your client with the old secret will fail.   <<LB>>  ---   - __CLI__.      ```     linode-cli account client-reset-secret \\   edc6790ea9db4d224c5c     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
client_id = 'client_id_example' # String | The OAuth Client ID to look up.

begin
  # Reset an OAuth client secret
  result = api_instance.post_reset_client_secret(api_version, client_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_reset_client_secret: #{e}"
end
```

#### Using the post_reset_client_secret_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostResetClientSecret200Response>, Integer, Hash)> post_reset_client_secret_with_http_info(api_version, client_id)

```ruby
begin
  # Reset an OAuth client secret
  data, status_code, headers = api_instance.post_reset_client_secret_with_http_info(api_version, client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostResetClientSecret200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_reset_client_secret_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **client_id** | **String** | The OAuth Client ID to look up. |  |

### Return type

[**PostResetClientSecret200Response**](PostResetClientSecret200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_service_transfer

> <PostServiceTransfer200Response> post_service_transfer(api_version, opts)

Request a service transfer

Creates a transfer request for the specified services. A request can contain any of the specified service types and any number of each service type. At this time, only Linodes can be transferred.  When created successfully, a confirmation email is sent to the account that created this transfer containing a transfer token and instructions on completing the transfer.  When a transfer is [accepted](https://techdocs.akamai.com/linode-api/reference/post-accept-service-transfer), the requested services are moved to the receiving account. Linode services will not experience interruptions due to the transfer process. Backups for Linodes are transferred as well.  DNS records that are associated with requested services will not be transferred or updated. Please ensure that associated DNS records have been updated or communicated to the recipient prior to the transfer.  A transfer can take up to three hours to complete once accepted. When a transfer is completed, billing for transferred services ends for the sending account and begins for the receiving account.  This operation can only be accessed by the unrestricted users of an account.  There are several conditions that you need to meet to successfully create a transfer request:  1. The account creating the transfer can't have a past due balance or active Terms of Service violation.  1. The service needs to be owned by the account that is creating the transfer.  1. The service can't be assigned to another Service Transfer that is pending or that's been accepted and is incomplete.  1. Linodes can't:      - be assigned to a NodeBalancer, Firewall, VLAN, VPC, or Managed Service.      - have any attached Block Storage Volumes.      - have any shared IP addresses.      - have any assigned /56, /64, or /116 IPv6 ranges.   <<LB>>  ---   - __CLI__.      ```     linode-cli service-transfers \\   create \\   --entities.linodes 111 \\   --entities.linodes 222     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_service_transfer_request: LinodeOpenapiClient::PostServiceTransferRequest.new({entities: LinodeOpenapiClient::GetServiceTransfer200ResponseEntities.new}) # PostServiceTransferRequest | The services to include in this transfer request.
}

begin
  # Request a service transfer
  result = api_instance.post_service_transfer(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_service_transfer: #{e}"
end
```

#### Using the post_service_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostServiceTransfer200Response>, Integer, Hash)> post_service_transfer_with_http_info(api_version, opts)

```ruby
begin
  # Request a service transfer
  data, status_code, headers = api_instance.post_service_transfer_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostServiceTransfer200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_service_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_service_transfer_request** | [**PostServiceTransferRequest**](PostServiceTransferRequest.md) | The services to include in this transfer request. | [optional] |

### Return type

[**PostServiceTransfer200Response**](PostServiceTransfer200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_user

> <PostUser200Response> post_user(api_version, opts)

Create a user

Creates a user on your account. You determine the new user's account access by setting it to restricted or unrestricted and by defining its grants. After completion, the API sends a confirmation message containing password creation and login instructions to the user's `email` address.  __Note__. This operation can only be accessed by account users with _unrestricted_ access.  __Parent and child accounts__  In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - A parent account user can create new parent account users.  - A child account can [update](https://techdocs.akamai.com/linode-api/reference/put-user) the child account parent user (proxy user) to `unrestricted`. This gives the proxy user access to create new child account users.  - A child account user can create new child account users.  - You can't create a proxy user. The proxy user in a child account is predefined when you initially provision the parent-child relationship.   <<LB>>  ---   - __CLI__.      ```     linode-cli users create \\   --username example_user \\   --email example_user@linode.com \\   --restricted true     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_user_request: LinodeOpenapiClient::PostUserRequest.new({username: 'example_user', email: 'example_user@linode.com'}) # PostUserRequest | Information about the User to create.
}

begin
  # Create a user
  result = api_instance.post_user(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_user: #{e}"
end
```

#### Using the post_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostUser200Response>, Integer, Hash)> post_user_with_http_info(api_version, opts)

```ruby
begin
  # Create a user
  data, status_code, headers = api_instance.post_user_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostUser200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->post_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_user_request** | [**PostUserRequest**](PostUserRequest.md) | Information about the User to create. | [optional] |

### Return type

[**PostUser200Response**](PostUser200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_account

> <PutAccount200Response> put_account(api_version, put_account_request)

Update your account

Updates contact and billing information related to your account. If you exclude any properties from the request, the operation leaves them unchanged.  __Note__. When updating an account's `country` to `US`, you'll get an error if the account's `zip` is not a valid US zip code.  __Parent and child accounts__  In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - You can't change the `company` for a parent account. Akamai uses this value to set the name for a child account parent user (proxy user) on any child account.  - Child account users can't run this operation. These users don't have access to billing-related operations.   <<LB>>  ---   - __CLI__.      ```     linode-cli account update \\   --address_1 \"123 Main St.\" \\   --address_2 \"Suite 101\" \\   --city Philadelphia \\   --company My Company \\ LLC \\   --country US \\   --email jsmith@mycompany.com \\   --first_name John \\   --last_name Smith \\   --phone 555-555-1212 \\   --state PA \\   --tax_id ATU99999999 \\   --zip 19102     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
put_account_request = LinodeOpenapiClient::PutAccountRequest.new # PutAccountRequest | Updated contact and billing information.

begin
  # Update your account
  result = api_instance.put_account(api_version, put_account_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_account: #{e}"
end
```

#### Using the put_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAccount200Response>, Integer, Hash)> put_account_with_http_info(api_version, put_account_request)

```ruby
begin
  # Update your account
  data, status_code, headers = api_instance.put_account_with_http_info(api_version, put_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAccount200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **put_account_request** | [**PutAccountRequest**](PutAccountRequest.md) | Updated contact and billing information. |  |

### Return type

[**PutAccount200Response**](PutAccount200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_account_settings

> <PutAccountSettings200Response> put_account_settings(api_version, put_account_settings_request)

Update account settings

Updates your account settings. For a Longview subscription plan, see [Update a Longview plan](https://techdocs.akamai.com/linode-api/reference/put-longview-plan).   <<LB>>  ---   - __CLI__.      ```     linode-cli account settings-update \\   --network_helper false     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
put_account_settings_request = LinodeOpenapiClient::PutAccountSettingsRequest.new # PutAccountSettingsRequest | Update Account settings information.

begin
  # Update account settings
  result = api_instance.put_account_settings(api_version, put_account_settings_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_account_settings: #{e}"
end
```

#### Using the put_account_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAccountSettings200Response>, Integer, Hash)> put_account_settings_with_http_info(api_version, put_account_settings_request)

```ruby
begin
  # Update account settings
  data, status_code, headers = api_instance.put_account_settings_with_http_info(api_version, put_account_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAccountSettings200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_account_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **put_account_settings_request** | [**PutAccountSettingsRequest**](PutAccountSettingsRequest.md) | Update Account settings information. |  |

### Return type

[**PutAccountSettings200Response**](PutAccountSettings200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_client

> <PutClient200Response> put_client(api_version, client_id, opts)

Update an OAuth client

Update information about an OAuth Client on your Account. This can be especially useful to update the `redirect_uri` of your client in the event that the callback url changed in your application.   <<LB>>  ---   - __CLI__.      ```     linode-cli account client-update \\   edc6790ea9db4d224c5c \\   --label Test_Client_1     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
client_id = 'client_id_example' # String | The OAuth Client ID to look up.
opts = {
  put_client_request: LinodeOpenapiClient::PutClientRequest.new # PutClientRequest | The fields to update.
}

begin
  # Update an OAuth client
  result = api_instance.put_client(api_version, client_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_client: #{e}"
end
```

#### Using the put_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutClient200Response>, Integer, Hash)> put_client_with_http_info(api_version, client_id, opts)

```ruby
begin
  # Update an OAuth client
  data, status_code, headers = api_instance.put_client_with_http_info(api_version, client_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutClient200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **client_id** | **String** | The OAuth Client ID to look up. |  |
| **put_client_request** | [**PutClientRequest**](PutClientRequest.md) | The fields to update. | [optional] |

### Return type

[**PutClient200Response**](PutClient200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_client_thumbnail

> Object put_client_thumbnail(api_version, client_id, body)

Update the OAuth client's thumbnail

Upload a thumbnail for a client you own.  You must upload an image file that will be returned when the thumbnail is retrieved.  This image will be publicly-viewable.   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
client_id = 'client_id_example' # String | The OAuth Client ID to look up.
body = File.new('/path/to/some/file') # File | The image to set as the thumbnail.

begin
  # Update the OAuth client's thumbnail
  result = api_instance.put_client_thumbnail(api_version, client_id, body)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_client_thumbnail: #{e}"
end
```

#### Using the put_client_thumbnail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> put_client_thumbnail_with_http_info(api_version, client_id, body)

```ruby
begin
  # Update the OAuth client's thumbnail
  data, status_code, headers = api_instance.put_client_thumbnail_with_http_info(api_version, client_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_client_thumbnail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **client_id** | **String** | The OAuth Client ID to look up. |  |
| **body** | **File** | The image to set as the thumbnail. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: image/png
- **Accept**: application/json


## put_user

> <PutUser200Response> put_user(api_version, username, opts)

Update a user

Update information about a user on your account, including its restricted status. When setting a user to `restricted`, the API sets no grants for it. You need to set grants so that user can access things on the account.  __Note__. This operation can only be accessed by account users with _unrestricted_ access.  __Parent and child accounts__  In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - You can't edit the `username` or `email` values for the child account parent user (proxy user). These are predefined for the proxy user when you initially provision the parent-child relationship. Only a proxy user's `restricted` status can be modified. This can only be done by an unrestricted child account user.  - A parent account using an unrestricted proxy user in a child account can modify the `username`, `email`, and `restricted` status for an existing child account user.  - A restricted account user--parent or child--can't change their user to `unrestricted`.   <<LB>>  ---   - __CLI__.      ```     linode-cli users update example_user \\   --username example_user \\   --email example@linode.com \\   --restricted true     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
username = 'username_example' # String | The username to look up.
opts = {
  put_user_request: LinodeOpenapiClient::PutUserRequest.new # PutUserRequest | The information to update.
}

begin
  # Update a user
  result = api_instance.put_user(api_version, username, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_user: #{e}"
end
```

#### Using the put_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutUser200Response>, Integer, Hash)> put_user_with_http_info(api_version, username, opts)

```ruby
begin
  # Update a user
  data, status_code, headers = api_instance.put_user_with_http_info(api_version, username, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutUser200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **username** | **String** | The username to look up. |  |
| **put_user_request** | [**PutUserRequest**](PutUserRequest.md) | The information to update. | [optional] |

### Return type

[**PutUser200Response**](PutUser200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_user_grants

> <PutUserGrants200Response> put_user_grants(api_version, username, put_user_grants_request)

Update a user's grants

Update the grants a user has. This can be used to give a user access to new entities or actions, or take access away.  You don't need to include the grant for every entity on the account in this request. Any that are not included remain unchanged.  __Note__. This operation can only be accessed by account users with _unrestricted_ access.  __Parent and child accounts__  In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, the following apply:  - No child account user can modify the `account_access` grant for the child account parent user (proxy user).  - An unrestricted child account user can configure all other grants for the proxy user, via `global` object.  - An unrestricted child account user can enable the `account_access` grant for other child account users. However, enabled child users are still subject to child user restrictions--they can't perform write operations for any billing or account information.   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

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

api_instance = LinodeOpenapiClient::AccountApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
username = 'username_example' # String | The username to look up.
put_user_grants_request = LinodeOpenapiClient::PutUserGrantsRequest.new # PutUserGrantsRequest | The grants to update. Omitted grants will be left unchanged.

begin
  # Update a user's grants
  result = api_instance.put_user_grants(api_version, username, put_user_grants_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_user_grants: #{e}"
end
```

#### Using the put_user_grants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutUserGrants200Response>, Integer, Hash)> put_user_grants_with_http_info(api_version, username, put_user_grants_request)

```ruby
begin
  # Update a user's grants
  data, status_code, headers = api_instance.put_user_grants_with_http_info(api_version, username, put_user_grants_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutUserGrants200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling AccountApi->put_user_grants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **username** | **String** | The username to look up. |  |
| **put_user_grants_request** | [**PutUserGrantsRequest**](PutUserGrantsRequest.md) | The grants to update. Omitted grants will be left unchanged. |  |

### Return type

[**PutUserGrants200Response**](PutUserGrants200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

