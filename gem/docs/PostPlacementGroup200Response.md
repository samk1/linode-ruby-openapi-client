# LinodeOpenapiClient::PostPlacementGroup200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | __Filterable__ The unique name set for the placement group. A label has these constraints:  - It needs to begin and end with an alphanumeric character. - It can only consist of alphanumeric characters, hyphens (&#x60;-&#x60;), underscores (&#x60;_&#x60;) or periods (&#x60;.&#x60;). | [optional] |
| **placement_group_policy** | **String** | How requests to add future compute instances to your placement group are handled, and whether it remains compliant:  - &#x60;strict&#x60;. Don&#39;t assign a new compute instance if it breaks the grouped-together or spread-apart model set by the &#x60;placement_group_type&#x60;. Use this to ensure the placement group stays compliant (&#x60;is_compliant: true&#x60;). - &#x60;flexible&#x60;. Assign a new compute instance, even if it breaks the grouped-together or spread-apart model set by the &#x60;placement_group_type&#x60;. This makes the group non-compliant (&#x60;is_compliant: false&#x60;). You need to wait for Akamai to move the offending compute instance to make it compliant again, once the necessary capacity is available in the region. Offers flexibility to add future compute instances if compliance isn&#39;t an immediate concern.  &lt;&lt;LB&gt;&gt;  &gt; 📘 &gt; &gt; In rare cases, non-compliance can occur with a &#x60;strict&#x60; placement group if Akamai needs to failover or migrate your compute instances for maintenance. Fixing non-compliance for a &#x60;strict&#x60; placement group is prioritized over a &#x60;flexible&#x60; group. | [optional] |
| **is_compliant** | **Boolean** | Whether all of the compute instances in your placement group are compliant. If &#x60;true&#x60;, all compute instances meet either the grouped-together or spread-apart model, which you determine through your selected &#x60;placement_group_type&#x60;. If &#x60;false&#x60;, a compute instance is out of this compliance. For example, assume you&#39;ve set &#x60;anti-affinity:local&#x60; as your &#x60;placement_group_type&#x60; and your group already has three qualifying compute instances on separate hosts, to support the spread-apart model. If a fourth compute instance is assigned that&#39;s on the same host as one of the existing three, the placement group is non-compliant. Enforce compliance in your group by setting a &#x60;placement_group_policy&#x60;.  &gt; 📘 &gt; &gt; Fixing compliance is not self-service. You need to wait for our assistance to physically move compute instances to make the group compliant again. | [optional] |
| **id** | **Integer** | The placement group&#39;s ID. You need to provide it for all operations impacting it. | [optional] |
| **members** | [**Array&lt;PostGroupUnassign200ResponseMembersInner&gt;**](PostGroupUnassign200ResponseMembersInner.md) | An array of compute instances included in the placement group. | [optional] |
| **placement_group_type** | **String** | __Filterable__, __Read-only__ How compute instances are distributed in your placement group. A &#x60;placement_group_type&#x60; using anti-affinity (&#x60;anti-affinity:local&#x60;) places compute instances in separate hosts, but still in the same region. This best supports the spread-apart model for high availability. A &#x60;placement_group_type&#x60; using affinity places compute instances physically close together, possibly on the same host. This supports the grouped-together model for low-latency.  &gt; 📘 &gt; &gt; Currently, only &#x60;anti_affinity:local&#x60; is available for &#x60;placement_group_type&#x60;. | [optional][readonly] |
| **region** | **String** | __Filterable__, __Read-only__ The [region](https://techdocs.akamai.com/linode-api/reference/get-regions) where the placement group was deployed. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostPlacementGroup200Response.new(
  label: PG_Miami_failover,
  placement_group_policy: strict,
  is_compliant: true,
  id: 528,
  members: null,
  placement_group_type: anti-affinity:local,
  region: us-mia
)
```

