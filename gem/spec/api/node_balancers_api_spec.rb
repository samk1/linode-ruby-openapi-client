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

# Unit tests for LinodeOpenapiClient::NodeBalancersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NodeBalancersApi' do
  before do
    # run before each test
    @api_instance = LinodeOpenapiClient::NodeBalancersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NodeBalancersApi' do
    it 'should create an instance of NodeBalancersApi' do
      expect(@api_instance).to be_instance_of(LinodeOpenapiClient::NodeBalancersApi)
    end
  end

  # unit tests for delete_node_balancer
  # Delete a NodeBalancer
  # Deletes a NodeBalancer.  __This is a destructive action and cannot be undone.__  Deleting a NodeBalancer will also delete all associated Configs and Nodes, although the backend servers represented by the Nodes will not be changed or removed. Deleting a NodeBalancer will cause you to lose access to the IP Addresses assigned to this NodeBalancer.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers delete 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_node_balancer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_node_balancer_config
  # Delete a config
  # Deletes the Config for a port of this NodeBalancer.  __This cannot be undone.__  Once completed, this NodeBalancer will no longer respond to requests on the given port. This also deletes all associated NodeBalancerNodes, but the Linodes they were routing traffic to will be unchanged and will not be removed.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers config-delete \\   12345 4567     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param config_id The ID of the Config to access.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_node_balancer_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_node_balancer_config_node
  # Delete a node balancer&#39;s node
  # Deletes a Node from this Config. This backend will no longer receive traffic for the configured port of this NodeBalancer.  This does not change or remove the Linode whose address was used in the creation of this Node.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers node-delete \\   12345 4567 54321     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param config_id The ID of the Config to access.
  # @param node_id The ID of the Node to access.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_node_balancer_config_node test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_node_balancer
  # Get a NodeBalancer
  # Returns a single NodeBalancer you can access.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers view 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param [Hash] opts the optional parameters
  # @return [NodeBalancer1]
  describe 'get_node_balancer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_node_balancer_config
  # Get a config
  # Returns configuration information for a single port of this NodeBalancer.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers config-view \\   12345 4567     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param config_id The ID of the Config to access.
  # @param [Hash] opts the optional parameters
  # @return [GetNodeBalancerConfig200Response]
  describe 'get_node_balancer_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_node_balancer_config_nodes
  # List nodes
  # Returns a paginated list of NodeBalancer nodes associated with this Config. These are the backends that will be sent traffic for this port.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers nodes-list 12345 4567     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param config_id The ID of the NodeBalancer config to access.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page of a collection to return.
  # @option opts [Integer] :page_size The number of items to return per page.
  # @return [GetNodeBalancerConfigNodes200Response]
  describe 'get_node_balancer_config_nodes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_node_balancer_configs
  # List configs
  # Returns a paginated list of NodeBalancer Configs associated with this NodeBalancer. NodeBalancer Configs represent individual ports that this NodeBalancer will accept traffic on, one Config per port.  For example, if you wanted to accept standard HTTP traffic, you would need a Config listening on port 80.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers configs-list 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page of a collection to return.
  # @option opts [Integer] :page_size The number of items to return per page.
  # @return [GetNodeBalancerConfigs200Response]
  describe 'get_node_balancer_configs test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_node_balancer_firewalls
  # List node balancer firewalls
  # View information for Firewalls assigned to this NodeBalancer.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers firewalls $nodeBalancerId     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param [Hash] opts the optional parameters
  # @return [GetNodeBalancerFirewalls200Response]
  describe 'get_node_balancer_firewalls test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_node_balancer_node
  # Get a node balancer&#39;s node
  # Returns information about a single Node, a backend for this NodeBalancer&#39;s configured port.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers node-view 12345 4567 54321     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param config_id The ID of the Config to access.
  # @param node_id The ID of the Node to access.
  # @param [Hash] opts the optional parameters
  # @return [GetNodeBalancerNode200Response]
  describe 'get_node_balancer_node test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_node_balancer_stats
  # Get node balancer statistics
  # Returns detailed statistics about the requested NodeBalancer.   &lt;&lt;LB&gt;&gt;  ---   - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param [Hash] opts the optional parameters
  # @return [GetNodeBalancerStats200Response]
  describe 'get_node_balancer_stats test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_node_balancers
  # List NodeBalancers
  # Returns a paginated list of NodeBalancers you have access to.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers list     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page of a collection to return.
  # @option opts [Integer] :page_size The number of items to return per page.
  # @return [GetNodeBalancers200Response]
  describe 'get_node_balancers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_node_balancer
  # Create a NodeBalancer
  # Creates a NodeBalancer in the requested Region. Only available in [regions](https://techdocs.akamai.com/linode-api/reference/get-regions) with \&quot;NodeBalancers\&quot; in their &#x60;capabilities&#x60;.  NodeBalancers require a port Config with at least one backend Node to start serving requests.  When using the Linode CLI to create a NodeBalancer, first create a NodeBalancer without any Configs. Then, create Configs and Nodes for that NodeBalancer with the respective [Create a config](https://techdocs.akamai.com/linode-api/reference/post-node-balancer-config) and [Create a node](https://techdocs.akamai.com/linode-api/reference/post-node-balancer-node) operations.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers create \\   --region us-east \\   --label balancer12345 \\   --client_conn_throttle 0     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param post_node_balancer_request Information about the NodeBalancer to create.
  # @param [Hash] opts the optional parameters
  # @return [NodeBalancer5]
  describe 'post_node_balancer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_node_balancer_config
  # Create a config
  # Creates a NodeBalancer Config, which allows the NodeBalancer to accept traffic on a new port. You will need to add NodeBalancer Nodes to the new Config before it can actually serve requests.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers config-create 12345 \\   --port 443 \\   --protocol https \\   --algorithm roundrobin \\   --stickiness http_cookie \\   --check http_body \\   --check_interval 90 \\   --check_timeout 10 \\   --check_attempts 3 \\   --check_path \&quot;/test\&quot; \\   --check_body \&quot;it works\&quot; \\   --check_passive true \\   --proxy_protocol \&quot;none\&quot; \\   --ssl_cert \&quot;-----BEGIN CERTIFICATE-----               CERTIFICATE_INFORMATION               -----END CERTIFICATE-----\&quot; \\   --ssl_key \&quot;-----BEGIN PRIVATE KEY-----              PRIVATE_KEY_INFORMATION              -----END PRIVATE KEY-----\&quot; \\   --cipher_suite recommended     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param [Hash] opts the optional parameters
  # @option opts [PostNodeBalancerConfigRequest] :post_node_balancer_config_request Information about the port to configure.
  # @return [PostNodeBalancerConfig200Response]
  describe 'post_node_balancer_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_node_balancer_node
  # Create a node
  # Creates a NodeBalancer Node, a backend that can accept traffic for this NodeBalancer Config. Nodes are routed requests on the configured port based on their status.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers node-create \\   12345 4567 \\   --address 192.168.210.120:80 \\   --label node54321 \\   --weight 50 \\   --mode accept     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param config_id The ID of the NodeBalancer config to access.
  # @param post_node_balancer_node_request Information about the Node to create.
  # @param [Hash] opts the optional parameters
  # @return [PostNodeBalancerNode200Response]
  describe 'post_node_balancer_node test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_rebuild_node_balancer_config
  # Rebuild a config
  # Rebuilds a NodeBalancer Config and its Nodes that you have permission to modify.  Use this operation to update a NodeBalancer&#39;s Config and Nodes with a single request.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers config-rebuild \\   12345 4567 \\   --port 443 \\   --protocol https \\   --algorithm roundrobin \\   --stickiness http_cookie \\   --check http_body \\   --check_interval 90 \\   --check_timeout 10 \\   --check_attempts 3 \\   --check_path \&quot;/test\&quot; \\   --check_body \&quot;it works\&quot; \\   --check_passive true \\   --proxy_protocol \&quot;none\&quot; \\   --ssl_cert \&quot;-----BEGIN CERTIFICATE-----               CERTIFICATE_INFORMATION               -----END CERTIFICATE-----\&quot; \\   --ssl_key \&quot;-----BEGIN PRIVATE KEY-----              PRIVATE_KEY_INFORMATION              -----END PRIVATE KEY-----\&quot; \\   --cipher_suite recommended \\   --nodes &#39;{\&quot;address\&quot;:\&quot;192.168.210.120:80\&quot;,\&quot;label\&quot;:\&quot;node1\&quot;,\&quot;weight\&quot;:50,\&quot;mode\&quot;:\&quot;accept\&quot;}&#39; \\   --nodes &#39;{\&quot;address\&quot;:\&quot;192.168.210.122:80\&quot;,\&quot;label\&quot;:\&quot;node2\&quot;,\&quot;weight\&quot;:50,\&quot;mode\&quot;:\&quot;accept\&quot;}&#39;     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param config_id The ID of the Config to access.
  # @param post_rebuild_node_balancer_config_request Information about the NodeBalancer Config to rebuild.
  # @param [Hash] opts the optional parameters
  # @return [PostRebuildNodeBalancerConfig200Response]
  describe 'post_rebuild_node_balancer_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for put_node_balancer
  # Update a NodeBalancer
  # Updates information about a NodeBalancer you can access.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers update 12345 \\   --label balancer12345 \\   --client_conn_throttle 0     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param node_balancer2 The information to update.
  # @param [Hash] opts the optional parameters
  # @return [NodeBalancer3]
  describe 'put_node_balancer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for put_node_balancer_config
  # Update a config
  # Updates the configuration for a single port on a NodeBalancer.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers config-update \\   12345 4567 \\   --port 443 \\   --protocol https \\   --algorithm roundrobin \\   --stickiness http_cookie \\   --check http_body \\   --check_interval 90 \\   --check_timeout 10 \\   --check_attempts 3 \\   --check_path \&quot;/test\&quot; \\   --check_body \&quot;it works\&quot; \\   --check_passive true \\   --proxy_protocol \&quot;none\&quot; \\   --ssl_cert \&quot;-----BEGIN CERTIFICATE-----               CERTIFICATE_INFORMATION               -----END CERTIFICATE-----\&quot; \\   --ssl_key \&quot;-----BEGIN PRIVATE KEY-----              PRIVATE_KEY_INFORMATION              -----END PRIVATE KEY-----\&quot; \\   --cipher_suite recommended     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param config_id The ID of the Config to access.
  # @param put_node_balancer_config_request The fields to update.
  # @param [Hash] opts the optional parameters
  # @return [PutNodeBalancerConfig200Response]
  describe 'put_node_balancer_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for put_node_balancer_node
  # Update a node
  # Updates information about a Node, a backend for this NodeBalancer&#39;s configured port.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli nodebalancers node-update \\   12345 4567 54321 \\   --address 192.168.210.120:80 \\   --label node54321 \\   --weight 50 \\   --mode accept     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     nodebalancers:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param node_balancer_id The ID of the NodeBalancer to access.
  # @param config_id The ID of the Config to access.
  # @param node_id The ID of the Node to access.
  # @param put_node_balancer_node_request The fields to update.
  # @param [Hash] opts the optional parameters
  # @return [PutNodeBalancerNode200Response]
  describe 'put_node_balancer_node test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
