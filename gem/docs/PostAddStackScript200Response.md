# LinodeOpenapiClient::PostAddStackScript200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Read-only__ The unique ID of this StackScript. | [optional][readonly] |
| **mine** | **Boolean** | __Filterable__, __Read-only__ Returns &#x60;true&#x60; if this StackScript is owned by the account of the user making the request, and the user making the request is unrestricted or has access to this StackScript. | [optional][readonly] |
| **is_public** | **Boolean** | __Filterable__ This determines whether other users can use your StackScript. __Once a StackScript is made public, it cannot be made private.__ | [optional] |
| **created** | **Time** | __Read-only__ The date this StackScript was created. | [optional][readonly] |
| **username** | **String** | __Read-only__ The User who created the StackScript. | [optional][readonly] |
| **rev_note** | **String** | __Filterable__ This field allows you to add notes for the set of revisions made to this StackScript. | [optional] |
| **user_defined_fields** | [**Array&lt;PostAddStackScript200ResponseUserDefinedFieldsInner&gt;**](PostAddStackScript200ResponseUserDefinedFieldsInner.md) | __Read-only__ This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment. See [Declare User-Defined Fields (UDFs)](https://www.linode.com/docs/products/tools/stackscripts/guides/write-a-custom-script/#declare-user-defined-fields-udfs) for more information. | [optional][readonly] |
| **script** | **String** | The script to execute when provisioning a new Linode with this StackScript. | [optional] |
| **images** | **Array&lt;String&gt;** | An array of Image IDs. These are the Images that can be deployed with this StackScript.  &#x60;any/all&#x60; indicates that all available Images, including private Images, are accepted. | [optional] |
| **deployments_total** | **Integer** | __Filterable__, __Read-only__ The total number of times this StackScript has been deployed. | [optional][readonly] |
| **deployments_active** | **Integer** | __Read-only__ Count of currently active, deployed Linodes created from this StackScript. | [optional][readonly] |
| **user_gravatar_id** | **String** | __Read-only__ The Gravatar ID for the User who created the StackScript. | [optional][readonly] |
| **description** | **String** | __Filterable__ A description for the StackScript. | [optional] |
| **label** | **String** | __Filterable__ The StackScript&#39;s label is for display purposes only. | [optional] |
| **updated** | **Time** | __Read-only__ The date this StackScript was last updated. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostAddStackScript200Response.new(
  id: 10079,
  mine: true,
  is_public: true,
  created: null,
  username: myuser,
  rev_note: Set up MySQL,
  user_defined_fields: {&quot;name&quot;:&quot;DB_PASSWORD&quot;,&quot;label&quot;:&quot;Enter the DB password&quot;,&quot;example&quot;:&quot;hunter2&quot;},
  script: \&quot;#!/bin/bash\&quot;,
  images: [&quot;linode/debian9&quot;,&quot;linode/debian8&quot;],
  deployments_total: 12,
  deployments_active: 1,
  user_gravatar_id: a445b305abda30ebc766bc7fda037c37,
  description: This StackScript installs and configures MySQL,
  label: a-stackscript,
  updated: null
)
```

