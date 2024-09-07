# LinodeOpenapiClient::PutManagedService200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The URL at which this Service is monitored. URL parameters such as &#x60;?no-cache&#x3D;1&#x60; are preserved. URL fragments/anchors such as &#x60;#monitor&#x60; are __not__ preserved. | [optional] |
| **notes** | **String** | Any information relevant to the Service that Linode special forces should know when attempting to resolve Issues. | [optional] |
| **body** | **String** | What to expect to find in the response body for the Service to be considered up. | [optional] |
| **timeout** | **Integer** | How long to wait, in seconds, for a response before considering the Service to be down. | [optional] |
| **updated** | **Time** | __Read-only__ When this Managed Service was last updated. | [optional][readonly] |
| **label** | **String** | The label for this Service. This is for display purposes only. | [optional] |
| **service_type** | **String** | How this Service is monitored. | [optional] |
| **region** | **String** | The Region in which this Service is located. This is required if address is a private IP, and may not be set otherwise. | [optional] |
| **created** | **Time** | __Read-only__ When this Managed Service was created. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ This Service&#39;s unique ID. | [optional][readonly] |
| **status** | **String** | __Read-only__ The current status of this Service. | [optional][readonly] |
| **credentials** | **Array&lt;Integer&gt;** | An array of ManagedCredential IDs that should be used when attempting to resolve issues with this Service. | [optional] |
| **consultation_group** | **String** | The group of ManagedContacts who should be notified or consulted with when an Issue is detected. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutManagedService200Response.new(
  address: https://example.org,
  notes: The service name is my-cool-application,
  body: it worked,
  timeout: 30,
  updated: null,
  label: prod-1,
  service_type: url,
  region: null,
  created: null,
  id: 9944,
  status: ok,
  credentials: null,
  consultation_group: on-call
)
```

