# LinodeOpenapiClient::GetUsers200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | __Filterable__ The User&#39;s username. This is used for logging in, and may also be displayed alongside actions the User performs (for example, in Events or public StackScripts). | [optional] |
| **last_login** | [**GetUsers200ResponseDataInnerAllOfLastLogin**](GetUsers200ResponseDataInnerAllOfLastLogin.md) |  | [optional] |
| **verified_phone_number** | **String** | __Read-only__ The phone number verified for this User Profile with the [Verify a phone number](https://techdocs.akamai.com/linode-api/reference/post-profile-phone-number-verify) operation.  &#x60;null&#x60; if this User Profile has no verified phone number. | [optional][readonly] |
| **password_created** | **Time** | __Read-only__ The date and time when this User&#39;s current password was created.  User passwords are first created during the Account sign-up process, and updated using the [Reset Password](https://login.linode.com/forgot/password) webpage.  &#x60;null&#x60; if this User has not created a password yet. | [optional][readonly] |
| **tfa_enabled** | **Boolean** | __Read-only__ A boolean value indicating if the User has Two Factor Authentication (TFA) enabled. Run the [Create a two factor secret](https://techdocs.akamai.com/linode-api/reference/post-tfa-enable) operation to enable TFA. | [optional][readonly] |
| **ssh_keys** | **Array&lt;String&gt;** | __Read-only__ A list of SSH Key labels added by this User.  Users can add keys with the [Add an SSH key](https://techdocs.akamai.com/linode-api/reference/post-add-ssh-key) operation.  These keys are deployed when this User is included in the &#x60;authorized_users&#x60; field of the following requests:  - [Create a Linode](https://techdocs.akamai.com/linode-api/reference/post-linode-instance) - [Rebuild a Linode](https://techdocs.akamai.com/linode-api/reference/post-rebuild-linode-instance) - [Create a disk](https://techdocs.akamai.com/linode-api/reference/post-add-linode-disk) | [optional][readonly] |
| **email** | **String** | The email address for the User. Linode sends emails to this address for account management communications. May be used for other communications as configured. | [optional] |
| **restricted** | **Boolean** | If true, the User must be granted access to perform actions or access entities on this Account. Run [List a user&#39;s grants](https://techdocs.akamai.com/linode-api/reference/get-user-grants) for details on how to configure grants for a restricted User. | [optional] |
| **user_type** | **String** | __Read-only__ If the user belongs to a [parent or child account](https://www.linode.com/docs/guides/parent-child-accounts/) relationship, this defines the user type in the respective account. Possible values include:  - &#x60;parent&#x60;. This is a user in an Akamai partner account. Akamai partners have a contractural relationship with their end customers, to sell Akamai services. This user can either have full access (a parent account admin user) or limited access. Limited users don&#39;t have access to manage child accounts, but they can be granted this access by an admin user.  - &#x60;child&#x60;. This is an Akamai partner&#39;s end customer user, in a child account. A child user can have either full or limited access. Full access lets the user manage other child users and the proxy user in a child account.  - &#x60;proxy&#x60;. This is a user on a child account that gives parent account users access to that child account. A parent account user with the &#x60;child_account_access&#x60; grant can [Create a proxy user token](https://techdocs.akamai.com/linode-api/reference/post-child-account-token) from the parent account. The parent user can use this token to run API operations from the child account, as if they were a child user.  - &#x60;default&#x60;. This applies to all regular, non-parent-child account users. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetUsers200ResponseDataInner.new(
  username: example_user,
  last_login: null,
  verified_phone_number: +5555555555,
  password_created: null,
  tfa_enabled: true,
  ssh_keys: [&quot;home-pc&quot;,&quot;laptop&quot;],
  email: example_user@linode.com,
  restricted: true,
  user_type: parent
)
```

