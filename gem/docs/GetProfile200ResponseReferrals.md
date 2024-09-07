# LinodeOpenapiClient::GetProfile200ResponseReferrals

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | __Read-only__ Your referral url, used to direct others to sign up for Linode with your referral code. | [optional][readonly] |
| **credit** | **Integer** | __Read-only__ The amount of account credit in US Dollars issued to you through the referral program. | [optional][readonly] |
| **code** | **String** | __Read-only__ Your referral code.  If others use this when signing up for Linode, you will receive account credit. | [optional][readonly] |
| **total** | **Integer** | __Read-only__ The number of users who have signed up with your referral code. | [optional][readonly] |
| **completed** | **Integer** | __Read-only__ The number of completed signups with your referral code. | [optional][readonly] |
| **pending** | **Integer** | __Read-only__ The number of pending signups with your referral code.  You will not receive credit for these signups until they are completed. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetProfile200ResponseReferrals.new(
  url: https://www.linode.com/?r&#x3D;871be32f49c1411b14f29f618aaf0c14637fb8d3,
  credit: 0,
  code: 871be32f49c1411b14f29f618aaf0c14637fb8d3,
  total: 0,
  completed: 0,
  pending: 0
)
```

