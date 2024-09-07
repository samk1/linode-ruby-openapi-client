# LinodeOpenapiClient::PutProfile200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uid** | **Integer** | __Read-only__ Your unique ID in our system. This value will never change, and can safely be used to identify your User. | [optional][readonly] |
| **authorized_keys** | **Array&lt;String&gt;** | The list of SSH Keys authorized to use Lish for your User. This value is ignored if &#x60;lish_auth_method&#x60; is &#x60;disabled&#x60;. | [optional] |
| **email** | **String** | Your email address.  This address will be used for communication with Linode as necessary. | [optional] |
| **restricted** | **Boolean** | If true, your User has restrictions on what can be accessed on your Account. To get details on what entities/actions you can access/perform, run [List grants](https://techdocs.akamai.com/linode-api/reference/get-profile-grants). | [optional] |
| **email_notifications** | **Boolean** | If true, you will receive email notifications about account activity.  If false, you may still receive business-critical communications through email. | [optional] |
| **ip_whitelist_enabled** | **Boolean** | If true, logins for your User will only be allowed from whitelisted IPs. This setting is currently deprecated, and cannot be enabled. If you disable this setting, you will not be able to re-enable it. | [optional] |
| **lish_auth_method** | **String** | The authentication methods that are allowed when connecting to [the Linode Shell (Lish)](https://www.linode.com/docs/guides/lish/).  - &#x60;keys_only&#x60; is the most secure if you intend to use Lish. - &#x60;disabled&#x60; is recommended if you do not intend to use Lish at all. - If this account&#39;s Cloud Manager authentication type is set to a Third-Party Authentication method, &#x60;password_keys&#x60; cannot be used as your Lish authentication method. To view this account&#39;s Cloud Manager &#x60;authentication_type&#x60; field, send a request to the [Get a profile](https://techdocs.akamai.com/linode-api/reference/get-profile) operation. | [optional] |
| **timezone** | **String** | The timezone you prefer to see times in. This is not used by the API directly. It is provided for the benefit of clients such as the Linode Cloud Manager and other clients built on the API. All times returned by the API are in UTC. | [optional] |
| **authentication_type** | **String** | __Read-only__ This account&#39;s Cloud Manager authentication type. Authentication types are chosen through Cloud Manager and authorized when logging into your account. These authentication types are either the user&#39;s password (in conjunction with their username), or the name of their identity provider such as GitHub. For example, if a user:  - Has never used Third-Party Authentication, their authentication type will be &#x60;password&#x60;. - Is using Third-Party Authentication, their authentication type will be the name of their Identity Provider (eg. &#x60;github&#x60;). - Has used Third-Party Authentication and has since revoked it, their authentication type will be &#x60;password&#x60;.  __Note__. This functionality may not yet be available in Cloud Manager. See the [Cloud Manager Changelog](https://www.linode.com/docs/products/tools/cloud-manager/release-notes/) for the latest updates. | [optional][readonly] |
| **two_factor_auth** | **Boolean** | If true, logins from untrusted computers will require Two Factor Authentication.  Run [Create a two factor secret](https://techdocs.akamai.com/linode-api/reference/post-tfa-enable) to enable Two Factor Authentication. | [optional] |
| **referrals** | [**PutProfile200ResponseReferrals**](PutProfile200ResponseReferrals.md) |  | [optional] |
| **verified_phone_number** | **String** | __Read-only__ The phone number verified for this Profile with the [Verify a phone number](https://techdocs.akamai.com/linode-api/reference/post-profile-phone-number-verify) operation.  &#x60;null&#x60; if this Profile has no verified phone number. | [optional][readonly] |
| **username** | **String** | __Read-only__ Your username, used for logging in to our system. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutProfile200Response.new(
  uid: 1234,
  authorized_keys: null,
  email: example-user@gmail.com,
  restricted: false,
  email_notifications: true,
  ip_whitelist_enabled: false,
  lish_auth_method: keys_only,
  timezone: US/Eastern,
  authentication_type: password,
  two_factor_auth: true,
  referrals: null,
  verified_phone_number: +5555555555,
  username: exampleUser
)
```

