# LinodeOpenapiClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verified_phone_number** | **String** | __Read-only__ The phone number verified for this User Profile with the [Verify a phone number](https://techdocs.akamai.com/linode-api/reference/post-profile-phone-number-verify) operation.  &#x60;null&#x60; if this User Profile has no verified phone number. | [optional][readonly] |
| **last_login** | [**PostUserRequestAllOfLastLogin**](PostUserRequestAllOfLastLogin.md) |  | [optional] |
| **username** | **String** | __Filterable__ The User&#39;s username. This is used for logging in, and may also be displayed alongside actions the User performs (for example, in Events or public StackScripts). | [optional] |
| **restricted** | **Boolean** | If true, the User must be granted access to perform actions or access entities on this Account. Run [List a user&#39;s grants](https://techdocs.akamai.com/linode-api/reference/get-user-grants) for details on how to configure grants for a restricted User. | [optional] |
| **ssh_keys** | **Array&lt;String&gt;** | __Read-only__ A list of SSH Key labels added by this User.  Users can add keys with the [Add an SSH key](https://techdocs.akamai.com/linode-api/reference/post-add-ssh-key) operation.  These keys are deployed when this User is included in the &#x60;authorized_users&#x60; field of the following requests:  - [Create a Linode](https://techdocs.akamai.com/linode-api/reference/post-linode-instance) - [Rebuild a Linode](https://techdocs.akamai.com/linode-api/reference/post-rebuild-linode-instance) - [Create a disk](https://techdocs.akamai.com/linode-api/reference/post-add-linode-disk) | [optional][readonly] |
| **email** | **String** | The email address for the User. Linode sends emails to this address for account management communications. May be used for other communications as configured. | [optional] |
| **tfa_enabled** | **Boolean** | __Read-only__ A boolean value indicating if the User has Two Factor Authentication (TFA) enabled. Run the [Create a two factor secret](https://techdocs.akamai.com/linode-api/reference/post-tfa-enable) operation to enable TFA. | [optional][readonly] |
| **password_created** | **Time** | __Read-only__ The date and time when this User&#39;s current password was created.  User passwords are first created during the Account sign-up process, and updated using the [Reset Password](https://login.linode.com/forgot/password) webpage.  &#x60;null&#x60; if this User has not created a password yet. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::User.new(
  verified_phone_number: +5555555555,
  last_login: null,
  username: example_user,
  restricted: true,
  ssh_keys: [&quot;home-pc&quot;,&quot;laptop&quot;],
  email: example_user@linode.com,
  tfa_enabled: true,
  password_created: null
)
```

