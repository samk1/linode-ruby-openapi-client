# LinodeOpenapiClient::GetLinodeTypes200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addons** | [**GetLinodeTypes200ResponseDataInnerAddons**](GetLinodeTypes200ResponseDataInnerAddons.md) |  | [optional] |
| **network_out** | **Integer** | __Filterable__, __Read-only__ The Mbits outbound bandwidth allocation. | [optional][readonly] |
| **id** | **String** | __Read-only__ The ID representing the Linode Type. | [optional][readonly] |
| **memory** | **Integer** | __Filterable__, __Read-only__ Amount of RAM included in this Linode Type. | [optional][readonly] |
| **disk** | **Integer** | __Filterable__, __Read-only__ The Disk size, in MB, of the Linode Type. | [optional][readonly] |
| **_class** | **String** | __Filterable__, __Read-only__ The class of the Linode Type.  We currently offer six classes of compute instances:    - &#x60;nanode&#x60; - Nanode instances are good for low-duty workloads, where performance isn&#39;t critical. __Note__. As of June 16th, 2020, Nanodes became 1 GB Linodes in the Cloud Manager, however, the API, the CLI, and billing will continue to refer to these instances as Nanodes.   - &#x60;standard&#x60; - Standard Shared instances are good for medium-duty workloads and are a good mix of performance, resources, and price. __Note__. As of June 16th, 2020, Standard Linodes in the Cloud Manager became Shared Linodes, however, the API, the CLI, and billing will continue to refer to these instances as Standard Linodes.   - &#x60;dedicated&#x60; - Dedicated CPU instances are good for full-duty workloads where consistent performance is important.   - &#x60;premium&#x60; (limited Regions) - In addition to the features of Dedicated instances, Premium instances come equipped with the latest AMD EPYC&amp;trade; CPUs, ensuring your applications are running on the latest hardware with consistently high performance. Only available in [regions](https://techdocs.akamai.com/linode-api/reference/get-regions) with \&quot;Premium Plans\&quot; in their &#x60;capabilities&#x60;   - &#x60;gpu&#x60; (limited Regions) - Linodes with dedicated NVIDIA Quadro&amp;reg; RTX 6000 GPUs accelerate highly specialized applications such as machine learning, AI, and video transcoding. Only available in [regions](https://techdocs.akamai.com/linode-api/reference/get-regions) with \&quot;GPU Linodes\&quot; in their &#x60;capabilities&#x60;   - &#x60;highmem&#x60; - High Memory instances favor RAM over other resources, and can be good for memory hungry use cases like caching and in-memory databases. All High Memory plans contain dedicated CPU cores. | [optional][readonly] |
| **successor** | **String** | __Read-only__ The Linode Type that a [mutate](https://techdocs.akamai.com/linode-api/reference/post-mutate-linode-instance) will upgrade to for a Linode of this type.  If &#x60;null&#x60;, a Linode of this type may not mutate. | [optional][readonly] |
| **gpus** | **Integer** | __Filterable__, __Read-only__ The number of GPUs this Linode Type offers. | [optional][readonly] |
| **vcpus** | **Integer** | __Filterable__, __Read-only__ The number of VCPU cores this Linode Type offers. | [optional][readonly] |
| **transfer** | **Integer** | __Filterable__, __Read-only__ The monthly outbound transfer amount, in MB. | [optional][readonly] |
| **price** | [**GetLinodeTypes200ResponseDataInnerPrice**](GetLinodeTypes200ResponseDataInnerPrice.md) |  | [optional] |
| **label** | **String** | __Filterable__, __Read-only__ The Linode Type&#39;s label is for display purposes only. | [optional][readonly] |
| **region_prices** | [**Array&lt;GetLinodeTypes200ResponseDataInnerRegionPricesInner&gt;**](GetLinodeTypes200ResponseDataInnerRegionPricesInner.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeTypes200ResponseDataInner.new(
  addons: null,
  network_out: 1000,
  id: g6-standard-2,
  memory: 4096,
  disk: 81920,
  _class: standard,
  successor: null,
  gpus: 0,
  vcpus: 2,
  transfer: 4000,
  price: null,
  label: Linode 4GB,
  region_prices: null
)
```

