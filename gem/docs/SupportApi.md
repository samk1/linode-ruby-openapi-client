# LinodeOpenapiClient::SupportApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ticket**](SupportApi.md#get_ticket) | **GET** /{apiVersion}/support/tickets/{ticketId} | Get a support ticket |
| [**get_ticket_replies**](SupportApi.md#get_ticket_replies) | **GET** /{apiVersion}/support/tickets/{ticketId}/replies | List replies |
| [**get_tickets**](SupportApi.md#get_tickets) | **GET** /{apiVersion}/support/tickets | List support tickets |
| [**post_close_ticket**](SupportApi.md#post_close_ticket) | **POST** /{apiVersion}/support/tickets/{ticketId}/close | Close a support ticket |
| [**post_ticket**](SupportApi.md#post_ticket) | **POST** /{apiVersion}/support/tickets | Open a support ticket |
| [**post_ticket_attachment**](SupportApi.md#post_ticket_attachment) | **POST** /{apiVersion}/support/tickets/{ticketId}/attachments | Create a support ticket attachment |
| [**post_ticket_reply**](SupportApi.md#post_ticket_reply) | **POST** /{apiVersion}/support/tickets/{ticketId}/replies | Create a reply |


## get_ticket

> <GetTicket200Response> get_ticket(api_version, ticket_id)

Get a support ticket

Returns a Support Ticket under your Account.   <<LB>>  ---   - __CLI__.      ```     linode-cli tickets view 11223344     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::SupportApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
ticket_id = 56 # Integer | The ID of the Support Ticket.

begin
  # Get a support ticket
  result = api_instance.get_ticket(api_version, ticket_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->get_ticket: #{e}"
end
```

#### Using the get_ticket_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTicket200Response>, Integer, Hash)> get_ticket_with_http_info(api_version, ticket_id)

```ruby
begin
  # Get a support ticket
  data, status_code, headers = api_instance.get_ticket_with_http_info(api_version, ticket_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTicket200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->get_ticket_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **ticket_id** | **Integer** | The ID of the Support Ticket. |  |

### Return type

[**GetTicket200Response**](GetTicket200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ticket_replies

> <GetTicketReplies200Response> get_ticket_replies(api_version, ticket_id, opts)

List replies

Returns a collection of replies to a Support Ticket on your Account.   <<LB>>  ---   - __CLI__.      ```     linode-cli tickets replies 11223344     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::SupportApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
ticket_id = 56 # Integer | The ID of the Support Ticket.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List replies
  result = api_instance.get_ticket_replies(api_version, ticket_id, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->get_ticket_replies: #{e}"
end
```

#### Using the get_ticket_replies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTicketReplies200Response>, Integer, Hash)> get_ticket_replies_with_http_info(api_version, ticket_id, opts)

```ruby
begin
  # List replies
  data, status_code, headers = api_instance.get_ticket_replies_with_http_info(api_version, ticket_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTicketReplies200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->get_ticket_replies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **ticket_id** | **Integer** | The ID of the Support Ticket. |  |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetTicketReplies200Response**](GetTicketReplies200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tickets

> <GetTickets200Response> get_tickets(api_version, opts)

List support tickets

Returns a collection of Support Tickets on your Account. Support Tickets can be both tickets you open with Linode for support, as well as tickets generated by Linode regarding your Account. This collection includes all Support Tickets generated on your Account, with open tickets returned first.   <<LB>>  ---   - __CLI__.      ```     linode-cli tickets list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::SupportApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  page: 56, # Integer | The page of a collection to return.
  page_size: 56 # Integer | The number of items to return per page.
}

begin
  # List support tickets
  result = api_instance.get_tickets(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->get_tickets: #{e}"
end
```

#### Using the get_tickets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTickets200Response>, Integer, Hash)> get_tickets_with_http_info(api_version, opts)

```ruby
begin
  # List support tickets
  data, status_code, headers = api_instance.get_tickets_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTickets200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->get_tickets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **page** | **Integer** | The page of a collection to return. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items to return per page. | [optional][default to 100] |

### Return type

[**GetTickets200Response**](GetTickets200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_close_ticket

> Object post_close_ticket(api_version, ticket_id)

Close a support ticket

Closes a Support Ticket you have access to modify.   <<LB>>  ---   - __CLI__.      ```     linode-cli tickets close 11223344     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::SupportApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
ticket_id = 56 # Integer | The ID of the Support Ticket.

begin
  # Close a support ticket
  result = api_instance.post_close_ticket(api_version, ticket_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->post_close_ticket: #{e}"
end
```

#### Using the post_close_ticket_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_close_ticket_with_http_info(api_version, ticket_id)

```ruby
begin
  # Close a support ticket
  data, status_code, headers = api_instance.post_close_ticket_with_http_info(api_version, ticket_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->post_close_ticket_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **ticket_id** | **Integer** | The ID of the Support Ticket. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_ticket

> <PostTicket200Response> post_ticket(api_version, opts)

Open a support ticket

Open a Support Ticket. Only one of the ID attributes (`linode_id`, `domain_id`, etc.) can be set on a single Support Ticket.   <<LB>>  ---   - __CLI__.      ```     linode-cli tickets create \\   --description \"I'm having trouble setting the root password on my Linode. I tried following the instructions but something is not working and I'm not sure what I'm doing wrong. Can you please help me figure out how I can reset it?\" \\   --linode_id 123 \\   --summary \"Having trouble resetting root password on my Linode\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::SupportApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
opts = {
  post_ticket_request: LinodeOpenapiClient::PostTicketRequest.new({summary: 'Having trouble resetting root password on my Linode', description: 'I'm having trouble setting the root password on my Linode. I tried following the instructions but something is not working and I'm not sure what I'm doing wrong. Can you please help me figure out how I can reset it?'}) # PostTicketRequest | Open a Support Ticket.
}

begin
  # Open a support ticket
  result = api_instance.post_ticket(api_version, opts)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->post_ticket: #{e}"
end
```

#### Using the post_ticket_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostTicket200Response>, Integer, Hash)> post_ticket_with_http_info(api_version, opts)

```ruby
begin
  # Open a support ticket
  data, status_code, headers = api_instance.post_ticket_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostTicket200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->post_ticket_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **post_ticket_request** | [**PostTicketRequest**](PostTicketRequest.md) | Open a Support Ticket. | [optional] |

### Return type

[**PostTicket200Response**](PostTicket200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ticket_attachment

> Object post_ticket_attachment(api_version, ticket_id, file)

Create a support ticket attachment

Adds a file attachment to an existing Support Ticket on your Account. File attachments are used to assist our Support team in resolving your Ticket. Examples of attachments are screen shots and text files that provide additional information.  The file attachment is submitted in the request as multipart/form-data.  __Note__. Accepted file extensions include: .gif, .jpg, .jpeg, .pjpg, .pjpeg, .tif, .tiff, .png, .pdf, or .txt.   <<LB>>  ---   - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::SupportApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
ticket_id = 56 # Integer | The ID of the Support Ticket.
file = 'file_example' # String | The local, absolute path to the file you want to attach to your Support Ticket.

begin
  # Create a support ticket attachment
  result = api_instance.post_ticket_attachment(api_version, ticket_id, file)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->post_ticket_attachment: #{e}"
end
```

#### Using the post_ticket_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_ticket_attachment_with_http_info(api_version, ticket_id, file)

```ruby
begin
  # Create a support ticket attachment
  data, status_code, headers = api_instance.post_ticket_attachment_with_http_info(api_version, ticket_id, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->post_ticket_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **ticket_id** | **Integer** | The ID of the Support Ticket. |  |
| **file** | **String** | The local, absolute path to the file you want to attach to your Support Ticket. |  |

### Return type

**Object**

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## post_ticket_reply

> <PostTicketReply200Response> post_ticket_reply(api_version, ticket_id, post_ticket_reply_request)

Create a reply

Adds a reply to an existing Support Ticket.   <<LB>>  ---   - __CLI__.      ```     linode-cli tickets reply 11223344 \\   --description \"Thank you for your help. I was able to figure out what the problem was and I successfully reset my password. You guys are the best!\"     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     account:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'
# setup authorization
LinodeOpenapiClient.configure do |config|
  # Configure Bearer authorization: personalAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LinodeOpenapiClient::SupportApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
ticket_id = 56 # Integer | The ID of the Support Ticket.
post_ticket_reply_request = LinodeOpenapiClient::PostTicketReplyRequest.new({description: 'Thank you for your help. I was able to figure out what the problem was and I successfully reset my password. You guys are the best!'}) # PostTicketReplyRequest | Add a reply.

begin
  # Create a reply
  result = api_instance.post_ticket_reply(api_version, ticket_id, post_ticket_reply_request)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->post_ticket_reply: #{e}"
end
```

#### Using the post_ticket_reply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostTicketReply200Response>, Integer, Hash)> post_ticket_reply_with_http_info(api_version, ticket_id, post_ticket_reply_request)

```ruby
begin
  # Create a reply
  data, status_code, headers = api_instance.post_ticket_reply_with_http_info(api_version, ticket_id, post_ticket_reply_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostTicketReply200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling SupportApi->post_ticket_reply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **ticket_id** | **Integer** | The ID of the Support Ticket. |  |
| **post_ticket_reply_request** | [**PostTicketReplyRequest**](PostTicketReplyRequest.md) | Add a reply. |  |

### Return type

[**PostTicketReply200Response**](PostTicketReply200Response.md)

### Authorization

[personalAccessToken](../README.md#personalAccessToken), [oauth](../README.md#oauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

