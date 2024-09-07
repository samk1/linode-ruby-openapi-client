# LinodeOpenapiClient::PutUserGrants200ResponseGlobal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_linodes** | **Boolean** | If true, this User may create Linodes. | [optional] |
| **add_databases** | **Boolean** | If true, this User may add Managed Databases. | [optional] |
| **child_account_access** | **Boolean** | In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, this gives a parent account access to endpoints that can be used to manage child accounts. Unrestricted parent account users have access to this grant, while restricted parent users don&#39;t. An unrestricted parent user can set this to &#x60;true&#x60; to add this grant to a restricted parent user. Displayed as &#x60;null&#x60; for all non-parent accounts. | [optional] |
| **add_firewalls** | **Boolean** | If true, this User may add Firewalls. | [optional] |
| **cancel_account** | **Boolean** | If true, this User may cancel the entire Account. | [optional] |
| **add_longview** | **Boolean** | If true, this User may create Longview clients and view the current plan. | [optional] |
| **add_vpcs** | **Boolean** | If true, this User may add VPCs. | [optional] |
| **account_access** | **String** | The level of access this User has to Account-level actions, like billing information. A restricted User will never be able to manage users.  __Parent and child accounts__  In a [parent and child account](https://www.linode.com/docs/guides/parent-child-accounts/) environment, this grant can be added to a child account user, to give the user &#x60;read-write&#x60; access. This gives the child user unrestricted access to expected management operations, such as creating other child users. However, child users don&#39;t have write access to billing operations. The API issues a specific error message if a write operation is attempted by a child user. | [optional] |
| **add_volumes** | **Boolean** | If true, this User may add Volumes. | [optional] |
| **add_placement_groups** | **Boolean** | If true, this User may add Placement Groups. | [optional] |
| **add_images** | **Boolean** | If true, this User may add Images. | [optional] |
| **add_stackscripts** | **Boolean** | If true, this User may add StackScripts. | [optional] |
| **add_nodebalancers** | **Boolean** | If true, this User may add NodeBalancers. | [optional] |
| **add_domains** | **Boolean** | If true, this User may add Domains. | [optional] |
| **longview_subscription** | **Boolean** | If true, this User may manage the Account&#39;s Longview subscription. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutUserGrants200ResponseGlobal.new(
  add_linodes: true,
  add_databases: true,
  child_account_access: true,
  add_firewalls: true,
  cancel_account: false,
  add_longview: true,
  add_vpcs: true,
  account_access: read_only,
  add_volumes: true,
  add_placement_groups: null,
  add_images: true,
  add_stackscripts: true,
  add_nodebalancers: true,
  add_domains: true,
  longview_subscription: true
)
```

