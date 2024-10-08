=begin
#Linode API

#[Read the API documentation](https://techdocs.akamai.com/linode-api/reference/api).

The version of the OpenAPI document: 4.177.1
Contact: support@linode.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'spec_helper'
require 'json'

# Unit tests for LinodeOpenapiClient::PlacementGroupsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PlacementGroupsApi' do
  before do
    # run before each test
    @api_instance = LinodeOpenapiClient::PlacementGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlacementGroupsApi' do
    it 'should create an instance of PlacementGroupsApi' do
      expect(@api_instance).to be_instance_of(LinodeOpenapiClient::PlacementGroupsApi)
    end
  end

  # unit tests for delete_placement_group
  # Delete a placement group
  # Deletes a placement group you have permission to &#x60;read_write&#x60;.  - Deleting a placement group can&#39;t be undone. - All compute instances need to be [removed](https://techdocs.akamai.com/linode-api/reference/post-group-unassign) before you can delete a placement group. - If your placement group is non-compliant, you can&#39;t delete it. You need to wait for our help to bring it [compliant](https://www.linode.com/docs/products/compute/compute-instances/guides/placement-groups/#non-compliance-precedence).   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli placement delete 528     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     linodes:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param group_id ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the &#x60;id&#x60; for the applicable placement group.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_placement_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_placement_group
  # Get a placement group
  # View a specific placement group by ID.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli placement view 528     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     linodes:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param group_id ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the &#x60;id&#x60; for the applicable placement group.
  # @param [Hash] opts the optional parameters
  # @return [GetPlacementGroup200Response]
  describe 'get_placement_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_placement_groups
  # List placement groups
  # Returns a paginated list of placement groups you have permission to view.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli placement-list     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     placement:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page of a collection to return.
  # @option opts [Integer] :page_size The number of items to return per page.
  # @return [GetPlacementGroups200Response]
  describe 'get_placement_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_group_add_linode
  # Assign a placement group
  # Add one or more compute instances to your placement group. Check out our [example API workflow](https://www.linode.com/docs/products/compute/compute-instances/guides/placement-groups/#create-a-placement-group) to create a placement group and add compute instances.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli placement assignLinode 528 \\   --linodes 123 456 \\   --non-compliant true     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     linodes:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param group_id ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the &#x60;id&#x60; for the applicable placement group.
  # @param post_group_add_linode_request The compute instances you want to add to your placement group.
  # @param [Hash] opts the optional parameters
  # @return [PostGroupAddLinode200Response]
  describe 'post_group_add_linode test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_group_unassign
  # Unassign a placement group
  # Remove one or more compute instances from your placement group.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli placement unassignLinode 528 \\   --linode 123 456     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     linodes:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param group_id ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the &#x60;id&#x60; for the applicable placement group.
  # @param request_body The compute instances you want to remove from your placement group.
  # @param [Hash] opts the optional parameters
  # @return [PostGroupUnassign200Response]
  describe 'post_group_unassign test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_placement_group
  # Create placement group
  # Creates a placement group on your account. Placement groups disperse your compute instances across physical machines (hosts) in one of our compute regions. Depending on your workload requirements, you may need your compute instances to follow specific strategies:  - __Grouped together__. You may want them placed close together to reduce latency between compute instances that are used for an application or workload. - __Spread apart__. You may want to disperse them across several hosts to support high availability, for example when required for failover.  &lt;&lt;LB&gt;&gt;  &gt; 📘 &gt; &gt; - Currently, this service is only available in [select regions](https://www.linode.com/docs/products/compute/compute-instances/guides/placement-groups/#availability). &gt; - For this request to complete successfully, your user needs to have the &#x60;add_placement&#x60; grant. &gt; - We offer an [example API workflow](https://www.linode.com/docs/products/compute/compute-instances/guides/placement-groups/#create-a-placement-group) you can follow to create a placement group.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli placement create \\   --label PG_Miami_failover \\   --region us-mia \\   --placement_group_type \&quot;anti-affinity:local\&quot; \\   --placement_group_policy strict     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     linodes:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param post_placement_group_request The requested initial state of the new placement group.
  # @param [Hash] opts the optional parameters
  # @return [PostPlacementGroup200Response]
  describe 'post_placement_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for put_placement_group
  # Update a placement group
  # Change the &#x60;label&#x60; for a specific placement group. This is the only value you can update. However, you can [add](https://techdocs.akamai.com/linode-api/reference/post-group-add-linode) more compute instances or [remove](https://techdocs.akamai.com/linode-api/reference/post-group-unassign) existing ones.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli placement update 528 \\   --label PG_Miami_failover_update     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     linodes:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param group_id ID of the placement group to look up. Run the [List placement groups](https://techdocs.akamai.com/linode-api/reference/get-placement-groups) operation and store the &#x60;id&#x60; for the applicable placement group.
  # @param put_placement_group_request Include the &#x60;label&#x60; parameter to update the name of your placement group.
  # @param [Hash] opts the optional parameters
  # @return [PutPlacementGroup200Response]
  describe 'put_placement_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
