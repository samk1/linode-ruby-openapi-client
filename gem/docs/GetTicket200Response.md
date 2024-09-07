# LinodeOpenapiClient::GetTicket200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **opened** | **Time** | __Filterable__, __Read-only__ The date and time this Ticket was created. | [optional][readonly] |
| **status** | **String** | __Read-only__ The current status of this Ticket. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The ID of the Support Ticket. | [optional][readonly] |
| **entity** | [**GetTicket200ResponseEntity**](GetTicket200ResponseEntity.md) |  | [optional] |
| **description** | **String** | __Read-only__ The full details of the issue or question. | [optional][readonly] |
| **updated** | **Time** | __Filterable__, __Read-only__ The date and time this Ticket was last updated. | [optional][readonly] |
| **updated_by** | **String** | __Read-only__ The User who last updated this Ticket. | [optional][readonly] |
| **closable** | **Boolean** | Whether the Support Ticket may be closed. | [optional] |
| **opened_by** | **String** | __Read-only__ The User who opened this Ticket. | [optional][readonly] |
| **closed** | **Time** | __Filterable__, __Read-only__ The date and time this Ticket was closed. | [optional][readonly] |
| **attachments** | **Array&lt;String&gt;** | __Read-only__ A list of filenames representing attached files associated with this Ticket. | [optional][readonly] |
| **summary** | **String** | __Read-only__ The summary or title for this Ticket. | [optional][readonly] |
| **gravatar_id** | **String** | __Read-only__ The Gravatar ID of the User who opened this Ticket. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetTicket200Response.new(
  opened: null,
  status: open,
  id: 11223344,
  entity: null,
  description: I am having trouble setting the root password on my Linode. I tried following the instructions but something is not working. Can you please help me figure out how I can reset it?,
  updated: null,
  updated_by: some_other_user,
  closable: false,
  opened_by: some_user,
  closed: null,
  attachments: null,
  summary: Having trouble resetting root password on my Linode,
  gravatar_id: 474a1b7373ae0be4132649e69c36ce30
)
```

