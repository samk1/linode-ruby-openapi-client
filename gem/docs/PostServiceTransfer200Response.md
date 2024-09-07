# LinodeOpenapiClient::PostServiceTransfer200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updated** | **Time** | When this transfer was last updated. | [optional] |
| **status** | **String** | __Filterable__ The status of the transfer request.  &#x60;accepted&#x60;: The transfer has been accepted by another user and is currently in progress. Transfers can take up to 3 hours to complete.  &#x60;canceled&#x60;: The transfer has been canceled by the sender.  &#x60;completed&#x60;: The transfer has completed successfully.  &#x60;failed&#x60;: The transfer has failed after initiation.  &#x60;pending&#x60;: The transfer is ready to be accepted.  &#x60;stale&#x60;: The transfer has exceeded its expiration date. It can no longer be accepted or canceled. | [optional] |
| **entities** | [**GetServiceTransfer200ResponseEntities**](GetServiceTransfer200ResponseEntities.md) |  | [optional] |
| **created** | **Time** | When this transfer was created. | [optional] |
| **expiry** | **Time** | When this transfer expires. Transfers will automatically expire 24 hours after creation. | [optional] |
| **is_sender** | **Boolean** | __Filterable__ If the requesting account created this transfer. | [optional] |
| **token** | **String** | The token used to identify and accept or cancel this transfer. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostServiceTransfer200Response.new(
  updated: null,
  status: pending,
  entities: null,
  created: null,
  expiry: null,
  is_sender: true,
  token: 123e4567-e89b-12d3-a456-426614174000
)
```

