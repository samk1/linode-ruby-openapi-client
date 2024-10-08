=begin
#Linode API

#[Read the API documentation](https://techdocs.akamai.com/linode-api/reference/api).

The version of the OpenAPI document: 4.177.1
Contact: support@linode.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'cgi'

module LinodeOpenapiClient
  class LinodeStackScriptsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a StackScript
    # Deletes a private StackScript you have permission to `read_write`. You cannot delete a public StackScript.   <<LB>>  ---   - __CLI__.      ```     linode-cli stackscripts delete 10079     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     stackscripts:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
    # @param api_version [String] __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
    # @param stackscript_id [String] The ID of the StackScript to look up.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_stack_script(api_version, stackscript_id, opts = {})
      data, _status_code, _headers = delete_stack_script_with_http_info(api_version, stackscript_id, opts)
      data
    end

    # Delete a StackScript
    # Deletes a private StackScript you have permission to &#x60;read_write&#x60;. You cannot delete a public StackScript.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli stackscripts delete 10079     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     stackscripts:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
    # @param api_version [String] __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
    # @param stackscript_id [String] The ID of the StackScript to look up.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_stack_script_with_http_info(api_version, stackscript_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinodeStackScriptsApi.delete_stack_script ...'
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling LinodeStackScriptsApi.delete_stack_script"
      end
      # verify enum value
      allowable_values = ["v4", "v4beta"]
      if @api_client.config.client_side_validation && !allowable_values.include?(api_version)
        fail ArgumentError, "invalid value for \"api_version\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'stackscript_id' is set
      if @api_client.config.client_side_validation && stackscript_id.nil?
        fail ArgumentError, "Missing the required parameter 'stackscript_id' when calling LinodeStackScriptsApi.delete_stack_script"
      end
      # resource path
      local_var_path = '/{apiVersion}/linode/stackscripts/{stackscriptId}'.sub('{' + 'apiVersion' + '}', CGI.escape(api_version.to_s)).sub('{' + 'stackscriptId' + '}', CGI.escape(stackscript_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['personalAccessToken', 'oauth']

      new_options = opts.merge(
        :operation => :"LinodeStackScriptsApi.delete_stack_script",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinodeStackScriptsApi#delete_stack_script\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a StackScript
    # Returns all of the information about a specified StackScript, including the contents of the script.   <<LB>>  ---   - __CLI__.      ```     linode-cli stackscripts view 10079     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     stackscripts:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
    # @param api_version [String] __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
    # @param stackscript_id [String] The ID of the StackScript to look up.
    # @param [Hash] opts the optional parameters
    # @return [GetStackScript200Response]
    def get_stack_script(api_version, stackscript_id, opts = {})
      data, _status_code, _headers = get_stack_script_with_http_info(api_version, stackscript_id, opts)
      data
    end

    # Get a StackScript
    # Returns all of the information about a specified StackScript, including the contents of the script.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli stackscripts view 10079     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     stackscripts:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
    # @param api_version [String] __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
    # @param stackscript_id [String] The ID of the StackScript to look up.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetStackScript200Response, Integer, Hash)>] GetStackScript200Response data, response status code and response headers
    def get_stack_script_with_http_info(api_version, stackscript_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinodeStackScriptsApi.get_stack_script ...'
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling LinodeStackScriptsApi.get_stack_script"
      end
      # verify enum value
      allowable_values = ["v4", "v4beta"]
      if @api_client.config.client_side_validation && !allowable_values.include?(api_version)
        fail ArgumentError, "invalid value for \"api_version\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'stackscript_id' is set
      if @api_client.config.client_side_validation && stackscript_id.nil?
        fail ArgumentError, "Missing the required parameter 'stackscript_id' when calling LinodeStackScriptsApi.get_stack_script"
      end
      # resource path
      local_var_path = '/{apiVersion}/linode/stackscripts/{stackscriptId}'.sub('{' + 'apiVersion' + '}', CGI.escape(api_version.to_s)).sub('{' + 'stackscriptId' + '}', CGI.escape(stackscript_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetStackScript200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['personalAccessToken', 'oauth']

      new_options = opts.merge(
        :operation => :"LinodeStackScriptsApi.get_stack_script",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinodeStackScriptsApi#get_stack_script\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List StackScripts
    # If the request is not authenticated, only public StackScripts are returned.  For more information on StackScripts, please read our [StackScripts documentation](https://www.linode.com/docs/products/tools/stackscripts/).   <<LB>>  ---   - __CLI__.      ```     linode-cli stackscripts list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     stackscripts:read_only     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
    # @param api_version [String] __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of a collection to return. (default to 1)
    # @option opts [Integer] :page_size The number of items to return per page. (default to 100)
    # @return [GetStackScripts200Response]
    def get_stack_scripts(api_version, opts = {})
      data, _status_code, _headers = get_stack_scripts_with_http_info(api_version, opts)
      data
    end

    # List StackScripts
    # If the request is not authenticated, only public StackScripts are returned.  For more information on StackScripts, please read our [StackScripts documentation](https://www.linode.com/docs/products/tools/stackscripts/).   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli stackscripts list     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     stackscripts:read_only     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
    # @param api_version [String] __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page of a collection to return. (default to 1)
    # @option opts [Integer] :page_size The number of items to return per page. (default to 100)
    # @return [Array<(GetStackScripts200Response, Integer, Hash)>] GetStackScripts200Response data, response status code and response headers
    def get_stack_scripts_with_http_info(api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinodeStackScriptsApi.get_stack_scripts ...'
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling LinodeStackScriptsApi.get_stack_scripts"
      end
      # verify enum value
      allowable_values = ["v4", "v4beta"]
      if @api_client.config.client_side_validation && !allowable_values.include?(api_version)
        fail ArgumentError, "invalid value for \"api_version\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling LinodeStackScriptsApi.get_stack_scripts, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 500
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LinodeStackScriptsApi.get_stack_scripts, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 25
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LinodeStackScriptsApi.get_stack_scripts, must be greater than or equal to 25.'
      end

      # resource path
      local_var_path = '/{apiVersion}/linode/stackscripts'.sub('{' + 'apiVersion' + '}', CGI.escape(api_version.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetStackScripts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['personalAccessToken', 'oauth']

      new_options = opts.merge(
        :operation => :"LinodeStackScriptsApi.get_stack_scripts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinodeStackScriptsApi#get_stack_scripts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a StackScript
    # Creates a StackScript in your Account.   <<LB>>  ---   - __CLI__.      ```     linode-cli stackscripts create \\   --label a-stackscript \\   --description \"This StackScript install and configures MySQL\" \\   --images \"linode/debian9\" \\   --images \"linode/debian8\" \\   --is_public true \\   --rev_note \"Set up MySQL\" \\   --script '#!/bin/bash'     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     stackscripts:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
    # @param api_version [String] __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
    # @param post_add_stack_script_request [PostAddStackScriptRequest] The properties to set for the new StackScript.
    # @param [Hash] opts the optional parameters
    # @return [PostAddStackScript200Response]
    def post_add_stack_script(api_version, post_add_stack_script_request, opts = {})
      data, _status_code, _headers = post_add_stack_script_with_http_info(api_version, post_add_stack_script_request, opts)
      data
    end

    # Create a StackScript
    # Creates a StackScript in your Account.   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli stackscripts create \\   --label a-stackscript \\   --description \&quot;This StackScript install and configures MySQL\&quot; \\   --images \&quot;linode/debian9\&quot; \\   --images \&quot;linode/debian8\&quot; \\   --is_public true \\   --rev_note \&quot;Set up MySQL\&quot; \\   --script &#39;#!/bin/bash&#39;     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     stackscripts:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
    # @param api_version [String] __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
    # @param post_add_stack_script_request [PostAddStackScriptRequest] The properties to set for the new StackScript.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PostAddStackScript200Response, Integer, Hash)>] PostAddStackScript200Response data, response status code and response headers
    def post_add_stack_script_with_http_info(api_version, post_add_stack_script_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinodeStackScriptsApi.post_add_stack_script ...'
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling LinodeStackScriptsApi.post_add_stack_script"
      end
      # verify enum value
      allowable_values = ["v4", "v4beta"]
      if @api_client.config.client_side_validation && !allowable_values.include?(api_version)
        fail ArgumentError, "invalid value for \"api_version\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'post_add_stack_script_request' is set
      if @api_client.config.client_side_validation && post_add_stack_script_request.nil?
        fail ArgumentError, "Missing the required parameter 'post_add_stack_script_request' when calling LinodeStackScriptsApi.post_add_stack_script"
      end
      # resource path
      local_var_path = '/{apiVersion}/linode/stackscripts'.sub('{' + 'apiVersion' + '}', CGI.escape(api_version.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_add_stack_script_request)

      # return_type
      return_type = opts[:debug_return_type] || 'PostAddStackScript200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['personalAccessToken', 'oauth']

      new_options = opts.merge(
        :operation => :"LinodeStackScriptsApi.post_add_stack_script",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinodeStackScriptsApi#post_add_stack_script\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a StackScript
    # Updates a StackScript.  __Once a StackScript is made public, it cannot be made private.__   <<LB>>  ---   - __CLI__.      ```     linode-cli stackscripts update 10079 \\   --label a-stackscript \\   --description \"This StackScript installs \\     and configures MySQL\" \\   --images \"linode/debian9\" \\   --images \"linode/debian8\" \\   --is_public true \\   --rev_note \"Set up MySQL\" \\   --script '#!/bin/bash'     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      ```     stackscripts:read_write     ```      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
    # @param api_version [String] __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
    # @param stackscript_id [String] The ID of the StackScript to look up.
    # @param [Hash] opts the optional parameters
    # @option opts [PutStackScriptRequest] :put_stack_script_request The fields to update.
    # @return [PutStackScript200Response]
    def put_stack_script(api_version, stackscript_id, opts = {})
      data, _status_code, _headers = put_stack_script_with_http_info(api_version, stackscript_id, opts)
      data
    end

    # Update a StackScript
    # Updates a StackScript.  __Once a StackScript is made public, it cannot be made private.__   &lt;&lt;LB&gt;&gt;  ---   - __CLI__.      &#x60;&#x60;&#x60;     linode-cli stackscripts update 10079 \\   --label a-stackscript \\   --description \&quot;This StackScript installs \\     and configures MySQL\&quot; \\   --images \&quot;linode/debian9\&quot; \\   --images \&quot;linode/debian8\&quot; \\   --is_public true \\   --rev_note \&quot;Set up MySQL\&quot; \\   --script &#39;#!/bin/bash&#39;     &#x60;&#x60;&#x60;      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)  - __OAuth scopes__.      &#x60;&#x60;&#x60;     stackscripts:read_write     &#x60;&#x60;&#x60;      [Learn more...](https://techdocs.akamai.com/linode-api/reference/get-started#oauth)
    # @param api_version [String] __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta.
    # @param stackscript_id [String] The ID of the StackScript to look up.
    # @param [Hash] opts the optional parameters
    # @option opts [PutStackScriptRequest] :put_stack_script_request The fields to update.
    # @return [Array<(PutStackScript200Response, Integer, Hash)>] PutStackScript200Response data, response status code and response headers
    def put_stack_script_with_http_info(api_version, stackscript_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinodeStackScriptsApi.put_stack_script ...'
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling LinodeStackScriptsApi.put_stack_script"
      end
      # verify enum value
      allowable_values = ["v4", "v4beta"]
      if @api_client.config.client_side_validation && !allowable_values.include?(api_version)
        fail ArgumentError, "invalid value for \"api_version\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'stackscript_id' is set
      if @api_client.config.client_side_validation && stackscript_id.nil?
        fail ArgumentError, "Missing the required parameter 'stackscript_id' when calling LinodeStackScriptsApi.put_stack_script"
      end
      # resource path
      local_var_path = '/{apiVersion}/linode/stackscripts/{stackscriptId}'.sub('{' + 'apiVersion' + '}', CGI.escape(api_version.to_s)).sub('{' + 'stackscriptId' + '}', CGI.escape(stackscript_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'put_stack_script_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'PutStackScript200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['personalAccessToken', 'oauth']

      new_options = opts.merge(
        :operation => :"LinodeStackScriptsApi.put_stack_script",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinodeStackScriptsApi#put_stack_script\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
