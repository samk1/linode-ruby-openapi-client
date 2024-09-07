# LinodeOpenapiClient::GetTickets200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **opened** | **Time** | __Filterable__, __Read-only__ The date and time this Ticket was created. | [optional][readonly] |
| **status** | **String** | __Read-only__ The current status of this Ticket. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The ID of the Support Ticket. | [optional][readonly] |
| **closable** | **Boolean** | Whether the Support Ticket may be closed. | [optional] |
| **updated** | **Time** | __Filterable__, __Read-only__ The date and time this Ticket was last updated. | [optional][readonly] |
| **updated_by** | **String** | __Read-only__ The User who last updated this Ticket. | [optional][readonly] |
| **entity** | [**GetTickets200ResponseDataInnerEntity**](GetTickets200ResponseDataInnerEntity.md) |  | [optional] |
| **description** | **String** | __Read-only__ The full details of the issue or question. | [optional][readonly] |
| **summary** | **String** | __Read-only__ The summary or title for this Ticket. | [optional][readonly] |
| **gravatar_id** | **String** | __Read-only__ The Gravatar ID of the User who opened this Ticket. | [optional][readonly] |
| **closed** | **Time** | __Filterable__, __Read-only__ The date and time this Ticket was closed. | [optional][readonly] |
| **opened_by** | **String** | __Read-only__ The User who opened this Ticket. | [optional][readonly] |
| **attachments** | **Array&lt;String&gt;** | __Read-only__ A list of filenames representing attached files associated with this Ticket. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetTickets200ResponseDataInner.new(
  opened: null,
  status: open,
  id: 11223344,
  closable: false,
  updated: null,
  updated_by: some_other_user,
  entity: null,
  description: I am having trouble setting the root password on my Linode. I tried following the instructions but something is not working. Can you please help me figure out how I can reset it?,
  summary: Having trouble resetting root password on my Linode,
  gravatar_id: 474a1b7373ae0be4132649e69c36ce30,
  closed: null,
  opened_by: some_user,
  attachments: null
)
```

