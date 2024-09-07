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

# Unit tests for LinodeOpenapiClient::DomainsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DomainsApi' do
  before do
    # run before each test
    @api_instance = LinodeOpenapiClient::DomainsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DomainsApi' do
    it 'should create an instance of DomainsApi' do
      expect(@api_instance).to be_instance_of(LinodeOpenapiClient::DomainsApi)
    end
  end

  # unit tests for delete_domain
  # Delete a domain
  # Deletes a Domain from Linode&#39;s DNS Manager. The Domain will be removed from Linode&#39;s nameservers shortly after this operation completes. This also deletes all associated Domain Records.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains delete 1234     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param domain_id The ID of the Domain to access.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_domain test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_domain_record
  # Delete a domain record
  # Deletes a Record on this Domain.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains records-delete 123 234     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param domain_id The ID of the Domain whose Record you are accessing.
  # @param record_id The ID of the Record you are accessing.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_domain_record test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_domain
  # Get a domain
  # This is a single Domain that you have registered in Linode&#39;s DNS Manager. Linode is not a registrar, and in order for this Domain record to work you must own the domain and point your registrar at Linode&#39;s nameservers.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains view 123     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param domain_id The ID of the Domain to access.
  # @param [Hash] opts the optional parameters
  # @return [Domain3]
  describe 'get_domain test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_domain_record
  # Get a domain record
  # View a single Record on this Domain.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains records-view 123 234     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param domain_id The ID of the Domain whose Record you are accessing.
  # @param record_id The ID of the Record you are accessing.
  # @param [Hash] opts the optional parameters
  # @return [GetDomainRecord200Response]
  describe 'get_domain_record test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_domain_records
  # List domain records
  # Returns a paginated list of Records configured on a Domain in Linode&#39;s DNS Manager.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains records-list 1234     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param domain_id The ID of the Domain we are accessing Records for.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page of a collection to return.
  # @option opts [Integer] :page_size The number of items to return per page.
  # @return [GetDomainRecords200Response]
  describe 'get_domain_records test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_domain_zone
  # Get a domain zone file
  # Returns the zone file for the last rendered zone for the specified domain.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains zone-file 123     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param domain_id ID of the Domain.
  # @param [Hash] opts the optional parameters
  # @return [GetDomainZone200Response]
  describe 'get_domain_zone test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_domains
  # List domains
  # This is a collection of Domains that you have registered in Linode&#39;s DNS Manager.  Linode is not a registrar, and in order for these to work you must own the domains and point your registrar at Linode&#39;s nameservers.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains list     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page of a collection to return.
  # @option opts [Integer] :page_size The number of items to return per page.
  # @return [GetDomains200Response]
  describe 'get_domains test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_clone_domain
  # Clone a domain
  # Clones a Domain and all associated DNS records from a Domain that is registered in Linode&#39;s DNS manager.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains clone 123 --domain example.com     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param domain_id ID of the Domain to clone.
  # @param post_clone_domain_request Information about the Domain to clone.
  # @param [Hash] opts the optional parameters
  # @return [Domain7]
  describe 'post_clone_domain test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_domain
  # Create a domain
  # Adds a new Domain to Linode&#39;s DNS Manager. Linode is not a registrar, and you must own the domain before adding it here. Be sure to point your registrar to Linode&#39;s nameservers so that the records hosted here are used.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains create \\   --type master \\   --domain example.org \\   --soa_email admin@example.org     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param post_domain_request Information about the domain you are registering.
  # @param [Hash] opts the optional parameters
  # @return [Domain2]
  describe 'post_domain test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_domain_record
  # Create a domain record
  # Adds a new Domain Record to the zonefile this Domain represents.  Each domain can have up to 12,000 active records.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains records-create 123 \\   --type A \\   --name test \\   --target 203.0.113.1 \\   --priority 50 \\   --weight 50 \\   --port 80 \\   --ttl_sec 604800     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param domain_id The ID of the Domain we are accessing Records for.
  # @param post_domain_record_request Information about the new Record to add.
  # @param [Hash] opts the optional parameters
  # @return [PostDomainRecord200Response]
  describe 'post_domain_record test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_import_domain
  # Import a domain
  # Imports a domain zone from a remote nameserver. Your nameserver must allow zone transfers (AXFR) from the following IPs:  - 96.126.114.97 - 96.126.114.98 - 2600:3c00::5e - 2600:3c00::5f   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains import --domain example.com --remote_nameserver examplenameserver.com     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param [Hash] opts the optional parameters
  # @option opts [PostImportDomainRequest] :post_import_domain_request Information about the Domain to import.
  # @return [Domain6]
  describe 'post_import_domain test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for put_domain
  # Update a domain
  # Update information about a Domain in Linode&#39;s DNS Manager.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains update 1234 \\   --retry_sec 7200 \\   --ttl_sec 300     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param domain_id The ID of the Domain to access.
  # @param domain4 The Domain information to update.
  # @param [Hash] opts the optional parameters
  # @return [Domain5]
  describe 'put_domain test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for put_domain_record
  # Update a domain record
  # Updates a single Record on this Domain.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli domains records-update 123 234 \\   --name test \\   --target 203.0.113.1 \\   --priority 50 \\   --weight 50 \\   --port 80 \\   --ttl_sec 604800     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     domains:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
  # @param api_version __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
  # @param domain_id The ID of the Domain whose Record you are accessing.
  # @param record_id The ID of the Record you are accessing.
  # @param put_domain_record_request The values to change.
  # @param [Hash] opts the optional parameters
  # @return [PutDomainRecord200Response]
  describe 'put_domain_record test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
