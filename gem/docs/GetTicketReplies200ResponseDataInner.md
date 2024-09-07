# LinodeOpenapiClient::GetTicketReplies200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Read-only__ The unique ID of this Support Ticket reply. | [optional][readonly] |
| **description** | **String** | __Read-only__ The body of this Support Ticket reply. | [optional][readonly] |
| **gravatar_id** | **String** | __Read-only__ The Gravatar ID of the User who created this reply. | [optional][readonly] |
| **from_linode** | **Boolean** | __Read-only__ If set to true, this reply came from a Linode employee. | [optional][readonly] |
| **created** | **Time** | __Read-only__ The date and time this Ticket reply was created. | [optional][readonly] |
| **created_by** | **String** | __Read-only__ The User who submitted this reply. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetTicketReplies200ResponseDataInner.new(
  id: 11223345,
  description: Hello,\nI&#39;m sorry to hear that you are having trouble resetting the root password of your Linode. Just to be sure, have you tried to follow the instructions in our online documentation? The link is here:\n \nhttps://linode.com/docs/guides/reset-the-root-password-on-your-linode/ \n\nIf you have, please reply with any additional steps you have also taken.\n\nRegards, Linode Support Team,
  gravatar_id: 474a1b7373ae0be4132649e69c36ce30,
  from_linode: true,
  created: null,
  created_by: John Q. Linode
)
```

