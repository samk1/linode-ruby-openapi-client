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

# Unit tests for LinodeOpenapiClient::LinodeKubernetesEngineLKEApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LinodeKubernetesEngineLKEApi' do
  before do
    # run before each test
    @api_instance = LinodeOpenapiClient::LinodeKubernetesEngineLKEApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LinodeKubernetesEngineLKEApi' do
    it 'should create an instance of LinodeKubernetesEngineLKEApi' do
      expect(@api_instance).to be_instance_of(LinodeOpenapiClient::LinodeKubernetesEngineLKEApi)
    end
  end

  # unit tests for delete_lke_cluster
  # Delete a Kubernetes cluster
  # Deletes a Cluster you have permission to &#x60;read_write&#x60;.  __Deleting a Cluster is a destructive action and cannot be undone.__  Deleting a Cluster:  - Deletes all Linodes in all pools within this Kubernetes cluster - Deletes all supporting Kubernetes services for this Kubernetes cluster (API server, etcd, etc) - Deletes all NodeBalancers created by this Kubernetes cluster - Does not delete any of the volumes created by this Kubernetes cluster   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke cluster-delete 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_lke_cluster test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_lke_cluster_kubeconfig
  # Delete a Kubeconfig
  # Delete and regenerate the Kubeconfig file for a Cluster.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke kubeconfig-delete 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_lke_cluster_kubeconfig test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_lke_cluster_node
  # Delete a node
  # Deletes a specific Node from a Node Pool.  __Deleting a Node is a destructive action and cannot be undone.__  Deleting a Node will reduce the size of the Node Pool it belongs to.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke node-delete 12345 12345-6aa78910bc     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster containing the Node.
  # @param node_id The ID of the Node to access.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_lke_cluster_node test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_lke_node_pool
  # Delete a node pool
  # Delete a specific Node Pool from a Kubernetes cluster.  __Deleting a Node Pool is a destructive action and cannot be undone.__  Deleting a Node Pool will delete all Linodes within that Pool.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke pool-delete 12345 456     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param pool_id ID of the Pool to look up.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_lke_node_pool test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_lke_service_token
  # Delete a service token
  # Delete and regenerate the service account token for a Cluster.  __Note__. When regenerating a service account token, the Cluster&#39;s control plane components and Linode CSI drivers are also restarted and configured with the new token. High Availability Clusters should not experience any disruption, while standard Clusters may experience brief control plane downtime while components are restarted.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke service-token-delete 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the target Kubernetes cluster.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_lke_service_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lke_cluster
  # Get a Kubernetes cluster
  # Get a specific Cluster by ID.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke cluster-view 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param [Hash] opts the optional parameters
  # @return [GetLkeCluster200Response]
  describe 'get_lke_cluster test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lke_cluster_api_endpoints
  # List Kubernetes API endpoints
  # List the Kubernetes API server endpoints for this cluster. Please note that it often takes 2-5 minutes before the endpoint is ready after first [creating a new cluster](https://techdocs.akamai.com/linode-api/reference/post-lke-cluster).   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke api-endpoints-list 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param [Hash] opts the optional parameters
  # @return [GetLkeClusterApiEndpoints200Response]
  describe 'get_lke_cluster_api_endpoints test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lke_cluster_dashboard
  # Get a Kubernetes cluster dashboard URL
  # Get a [Kubernetes Dashboard](https://github.com/kubernetes/dashboard) access URL for this Cluster, which enables performance of administrative tasks through a web interface.  Dashboards are installed for Clusters by default.  To access the Cluster Dashboard login prompt, enter the URL in a web browser. Select either __Token__ or __Kubeconfig__ authentication, then select __Sign in__.  For additional guidance on using the Cluster Dashboard, see the [Navigating the Cluster Dashboard](https://www.linode.com/docs/guides/using-the-kubernetes-dashboard-on-lke/#navigating-the-cluster-dashboard) section of our guide on [Using the Kubernetes Dashboard on LKE](https://www.linode.com/docs/guides/using-the-kubernetes-dashboard-on-lke/).   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke cluster-dashboard-url 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param [Hash] opts the optional parameters
  # @return [GetLkeClusterDashboard200Response]
  describe 'get_lke_cluster_dashboard test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lke_cluster_kubeconfig
  # Get a Kubeconfig
  # Get the Kubeconfig file for a Cluster. Please note that it often takes 2-5 minutes before the Kubeconfig file is ready after first [creating a new cluster](https://techdocs.akamai.com/linode-api/reference/post-lke-cluster).   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke kubeconfig-view 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param [Hash] opts the optional parameters
  # @return [GetLkeClusterKubeconfig200Response]
  describe 'get_lke_cluster_kubeconfig test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lke_cluster_node
  # Get a node
  # Returns the values for a specified node object.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke node-view 123456 12345-6aa78910bc     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster containing the Node.
  # @param node_id The ID of the Node to access.
  # @param [Hash] opts the optional parameters
  # @return [GetLkeClusterNode200Response]
  describe 'get_lke_cluster_node test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lke_cluster_pools
  # List node pools
  # Returns all active Node Pools on a Kubernetes cluster.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke pools-list 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param [Hash] opts the optional parameters
  # @return [GetLkeClusterPools200Response]
  describe 'get_lke_cluster_pools test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lke_clusters
  # List Kubernetes clusters
  # Lists current Kubernetes clusters available on your account.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke clusters-list     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param [Hash] opts the optional parameters
  # @return [GetLkeClusters200Response]
  describe 'get_lke_clusters test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lke_node_pool
  # Get a node pool
  # Get a specific Node Pool by ID.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke pool-view 12345 456     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param pool_id ID of the Pool to look up.
  # @param [Hash] opts the optional parameters
  # @return [GetLkeNodePool200Response]
  describe 'get_lke_node_pool test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lke_version
  # Get a Kubernetes version
  # View a Kubernetes version available for deployment to a Kubernetes cluster.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke version-view 1.27     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param version The LKE version to view.
  # @param [Hash] opts the optional parameters
  # @return [GetLkeVersions200ResponseDataInner]
  describe 'get_lke_version test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lke_versions
  # List Kubernetes versions
  # List the Kubernetes versions available for deployment to a Kubernetes cluster.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke versions-list     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param [Hash] opts the optional parameters
  # @return [GetLkeVersions200Response]
  describe 'get_lke_versions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_lke_cluster
  # Create a Kubernetes cluster
  # Creates a Kubernetes cluster. The Kubernetes cluster will be created asynchronously. You can use the events system to determine when the Kubernetes cluster is ready to use. Please note that it often takes 2-5 minutes before the [Kubernetes API endpoints](https://techdocs.akamai.com/linode-api/reference/get-lke-cluster-api-endpoints) and the [Kubeconfig file](https://techdocs.akamai.com/linode-api/reference/get-lke-cluster-kubeconfig) for the new cluster are ready.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke cluster-create \\   --label cluster12345 \\   --region us-central \\   --k8s_version 1.27 \\   --control_plane.high_availability true \\   --node_pools.type g6-standard-4 --node_pools.count 6 \\   --node_pools.type g6-standard-8 --node_pools.count 3 \\   --node_pools.autoscaler.enabled true \\   --node_pools.autoscaler.max 12 \\   --node_pools.autoscaler.min 3 \\   --tags ecomm     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param [Hash] opts the optional parameters
  # @option opts [PostLkeClusterRequest] :post_lke_cluster_request Configuration for the Kubernetes cluster.
  # @return [PostLkeCluster200Response]
  describe 'post_lke_cluster test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_lke_cluster_node_recycle
  # Recycle a node
  # Recycles an individual Node in the designated Kubernetes Cluster. The Node will be deleted and replaced with a new Linode, which may take a few minutes. Replacement Nodes are installed with the latest available patch for the Cluster&#39;s Kubernetes Version.  __Any local storage on deleted Linodes (such as &#x60;hostPath&#x60; and &#x60;emptyDir&#x60; volumes, or &#x60;local&#x60; PersistentVolumes) will be erased.__   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke node-recycle 12345 12345-6aa78910bc     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster containing the Node.
  # @param node_id ID of the Node to be recycled.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'post_lke_cluster_node_recycle test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_lke_cluster_pool_recycle
  # Recycle a node pool
  # Recycles a Node Pool for the designated Kubernetes Cluster. All Linodes within the Node Pool will be deleted and replaced with new Linodes on a rolling basis, which may take several minutes. Replacement Nodes are installed with the latest available patch for the Cluster&#39;s Kubernetes Version.  __Any local storage on deleted Linodes (such as &#x60;hostPath&#x60; and &#x60;emptyDir&#x60; volumes, or &#x60;local&#x60; PersistentVolumes) will be erased.__   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke pool-recycle 12345 456     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster this Node Pool is attached to.
  # @param pool_id ID of the Node Pool to be recycled.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'post_lke_cluster_pool_recycle test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_lke_cluster_pools
  # Create a node pool
  # Creates a new Node Pool for the designated Kubernetes cluster.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke pool-create 12345 \\   --type g6-standard-4 \\   --count 6 \\   --tags example-tag \\   --autoscaler.enabled true \\   --autoscaler.max 12 \\   --autoscaler.min 3     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param post_lke_cluster_pools_request Configuration for the Node Pool.
  # @param [Hash] opts the optional parameters
  # @return [PostLkeClusterPools200Response]
  describe 'post_lke_cluster_pools test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_lke_cluster_recycle
  # Recycle cluster nodes
  # Recycles all nodes in all pools of a designated Kubernetes Cluster. All Linodes within the Cluster will be deleted and replaced with new Linodes on a rolling basis, which may take several minutes. Replacement Nodes are installed with the latest available [patch version](https://github.com/kubernetes/community/blob/master/contributors/design-proposals/release/versioning.md#kubernetes-release-versioning) for the Cluster&#39;s current Kubernetes minor release.  __Any local storage on deleted Linodes (such as &#x60;hostPath&#x60; and &#x60;emptyDir&#x60; volumes, or &#x60;local&#x60; PersistentVolumes) will be erased.__   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke cluster-nodes-recycle 12345     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster which contains nodes to be recycled.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'post_lke_cluster_recycle test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_lke_cluster_regenerate
  # Regenerate a Kubernetes cluster
  # Regenerate the Kubeconfig file and/or the service account token for a Cluster.  This is a helper operation that allows performing both the [Delete a Kubeconfig](https://techdocs.akamai.com/linode-api/reference/delete-lke-cluster-kubeconfig) and the [Delete a service token](https://techdocs.akamai.com/linode-api/reference/delete-lke-service-token) operations with a single request.  When using this operation, at least one of &#x60;kubeconfig&#x60; or &#x60;servicetoken&#x60; is required.  __Note__. When regenerating a service account token, the Cluster&#39;s control plane components and Linode CSI drivers are also restarted and configured with the new token. High Availability Clusters should not experience any disruption, while standard Clusters may experience brief control plane downtime while components are restarted.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke regenerate 12345 \\     --kubeconfig true \\     --servicetoken true     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the target Kubernetes cluster.
  # @param [Hash] opts the optional parameters
  # @option opts [PostLkeClusterRegenerateRequest] :post_lke_cluster_regenerate_request The Kubernetes Cluster Regenerate request object.
  # @return [Object]
  describe 'post_lke_cluster_regenerate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for put_lke_cluster
  # Update a Kubernetes cluster
  # Updates a Kubernetes cluster.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke cluster-update 12345 \\   --label lkecluster54321 \\   --control_plane.high_availability true \\   --k8s_version 1.27 \\   --tags ecomm \\   --tags blog \\   --tags prod \\   --tags monitoring     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param [Hash] opts the optional parameters
  # @option opts [PutLkeClusterRequest] :put_lke_cluster_request The fields to update the Kubernetes cluster.
  # @return [PutLkeCluster200Response]
  describe 'put_lke_cluster test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for put_lke_node_pool
  # Update a node pool
  # Updates a node pool&#39;s count, labels and taints, and autoscaler configuration.  Linodes are created or deleted to match changes to the Node Pool&#39;s count.  Specifying labels or taints on update overwrites any previous values, and updates existing nodes with the new values without a recycle.  __Any local storage on deleted Linodes (such as &#x60;hostPath&#x60; and &#x60;emptyDir&#x60; volumes, or &#x60;local&#x60; PersistentVolumes) will be erased.__   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli lke pool-update 12345 456 \\   --count 6 \\   --autoscaler.enabled true \\   --autoscaler.max 12 \\   --autoscaler.min 3 \\     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     lke:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param cluster_id ID of the Kubernetes cluster to look up.
  # @param pool_id ID of the Pool to look up.
  # @param [Hash] opts the optional parameters
  # @option opts [PutLkeNodePoolRequest] :put_lke_node_pool_request The fields to update.
  # @return [PutLkeNodePool200Response]
  describe 'put_lke_node_pool test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
