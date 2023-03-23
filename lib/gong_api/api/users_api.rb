=begin
#Gong API

#<h2>Overview</h2> <p> The Gong API allows you to: </p> <ol> <li> Receive the following information from Gong: <ol type=\"a\"> <li> Your company's <a href=\"#tag--Calls\">calls</a> in Gong </li> <li> Your company's <a href=\"#tag--Users\">users</a> in Gong </li> <li> Your company's user <a href=\"#tag--Stats\">stats</a> in Gong </li> <li> Your company's user <a href=\"#tag--Settings\">settings</a> in Gong </li> <li> Your company's <a href=\"#tag--Library\">libraries</a> in Gong </li> </ol></li> <li> <a href=\"#post-/v2/calls\">Upload</a> new or  <a href=\"#put-/v2/calls/-id-/media\">update</a>  call recordings in Gong, in order to support cases where you have an internal system that records  calls or obtains them from a third-party entity. </li> <li> <a href=\"#post-/v2/data-privacy/erase-data-for-email-address\">Data Privacy</a>:  Delete users and all their associated elements.</li> <li> Upload <a href=\"#tag--CRM\">CRM</a> data into Gong.  </li> </ol> <p>Base URL for all API calls is <a href=\"https://us-55616.api.gong.io\"> https://us-55616.api.gong.io </a> </p> <h2>Authentication</h2>  <p> There are two ways to retrieve credentials to the Gong Public API: </p> <ol><li>Retrieve Manually:<br> <p> In the <a href=\"https://app.gong.io/company/api\">Gong API Page</a> (you must be a technical administrator in Gong), click \"Create\" to receive an <b>Access Key</b>  and an <b>Access Key Secret</b>.<br> </p> <p> Use the Basic Authorization HTTP header (as per <a target=\"_blank\" href=\"https://www.rfc-editor.org/rfc/rfc7617.txt\">RFC</a>) to access the Public API as shown below:<br> <code>Authorization: Basic &lt;token&gt;</code><br> </p> <p> To create the basic token, combine the <b>Access Key</b> and the <b>Access Key Secret</b> with  colon (:) and then encode in Base64 as following:<br> <code>Base64(&lt;accessKey&gt; : &lt;accessKeySecret&gt;)</code><br><br> </p></li> <li>Retrieve through OAuth<br> <p> To obtain the Bearer token, follow the steps described in the <a target=\"_blank\" href=\"https://help.gong.io/hc/en-us/articles/360056677792\">Gong OAuth Guide</a>. <br></p> <p> After obtaining the token, use the Bearer Authorization HTTP header (as per <a target=\"_blank\" href=\"https://www.rfc-editor.org/rfc/rfc6750.txt\">RFC</a>) to access the Public API as shown below:<br> <code>Authorization: Bearer &lt;token&gt;</code> </p> </li></ol> <h2>Limits</h2>  <p> By default Gong limits your company's access to the service to 3 API calls per second, and 10,000 API calls per day. </p> <p> When the rate of API calls exceeds these limits an HTTP status code <b>429</b> is returned and a <b>Retry-After</b> header indicates  how many seconds to wait before making a new request. </p><p> If required, contact help@gong.io to change these limits. </p>  <h2>Cursors</h2>  <p> Some API calls that return a list are limited in the amount of records they may return, so multiple API calls may be  required to bring all records. Such an API call also returns a <b>records</b> field, which contains the number of records  in the current page, the current page number and the total number of records. </p> <p> In cases where the total number of records exceeds the number of records thus far retrieved, the <b>records</b> field will also  contain a <b>cursor</b> field which can be used to access the next page of records. To retrieve the next page, repeat the API call with  the <b>cursor</b> value as supplied by the previous API call. All other request inputs should remain the same. </p> <h2>Forward Compatibility</h2>  <p> When coding a system to accept Gong data, take into account that Gong may, without prior warning, add fields to the JSON output.  It is recommended to future proof your code so that it disregards all JSON fields you don't actually use.  </p><p></p>

OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

module GongAPI
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve user history (/v2/users/{id}/settings-history)
    # Retrieve a specific user's history.  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:users:read'.
    # @param id Gong&#x27;s unique numeric identifier for the user (up to 20 digits).
    # @param [Hash] opts the optional parameters
    # @return [SettingsHistory]
    def get_user_history_using_get(id, opts = {})
      data, _status_code, _headers = get_user_history_using_get_with_http_info(id, opts)
      data
    end

    # Retrieve user history (/v2/users/{id}/settings-history)
    # Retrieve a specific user&#x27;s history.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:users:read&#x27;.
    # @param id Gong&#x27;s unique numeric identifier for the user (up to 20 digits).
    # @param [Hash] opts the optional parameters
    # @return [Array<(SettingsHistory, Integer, Hash)>] SettingsHistory data, response status code and response headers
    def get_user_history_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user_history_using_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.get_user_history_using_get"
      end
      # resource path
      local_var_path = '/v2/users/{id}/settings-history'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'SettingsHistory' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_history_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve user (/v2/users/{id})
    # Retrieve a specific user.  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:users:read'.
    # @param id Gong&#x27;s unique numeric identifier for the user (up to 20 digits).
    # @param [Hash] opts the optional parameters
    # @return [User]
    def get_user_using_get(id, opts = {})
      data, _status_code, _headers = get_user_using_get_with_http_info(id, opts)
      data
    end

    # Retrieve user (/v2/users/{id})
    # Retrieve a specific user.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:users:read&#x27;.
    # @param id Gong&#x27;s unique numeric identifier for the user (up to 20 digits).
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def get_user_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user_using_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.get_user_using_get"
      end
      # resource path
      local_var_path = '/v2/users/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'User' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List users by filter (/v2/users/extensive)
    # List multiple Users.  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:users:read'.
    # @param body multipleUsersRequest
    # @param [Hash] opts the optional parameters
    # @return [UsersMetadata]
    def list_multiple_users_using_post(body, opts = {})
      data, _status_code, _headers = list_multiple_users_using_post_with_http_info(body, opts)
      data
    end

    # List users by filter (/v2/users/extensive)
    # List multiple Users.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:users:read&#x27;.
    # @param body multipleUsersRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsersMetadata, Integer, Hash)>] UsersMetadata data, response status code and response headers
    def list_multiple_users_using_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_multiple_users_using_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersApi.list_multiple_users_using_post"
      end
      # resource path
      local_var_path = '/v2/users/extensive'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'UsersMetadata' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_multiple_users_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all users (/v2/users)
    # List all of the company's users.  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:users:read'.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor When paging is needed, provide the value supplied by the previous API call to bring the following page of records.
    # @option opts [BOOLEAN] :include_avatars Avatars are synthetic users representing Gong employees (CSMs and support providers) when they access your instance. References to avatars&#x27; IDs may be found in the outputs of other API endpoints. This parameter is optional, if not provided avatars will not be included in the results.
    # @return [UsersMetadata]
    def list_users_using_get(opts = {})
      data, _status_code, _headers = list_users_using_get_with_http_info(opts)
      data
    end

    # List all users (/v2/users)
    # List all of the company&#x27;s users.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:users:read&#x27;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor When paging is needed, provide the value supplied by the previous API call to bring the following page of records.
    # @option opts [BOOLEAN] :include_avatars Avatars are synthetic users representing Gong employees (CSMs and support providers) when they access your instance. References to avatars&#x27; IDs may be found in the outputs of other API endpoints. This parameter is optional, if not provided avatars will not be included in the results.
    # @return [Array<(UsersMetadata, Integer, Hash)>] UsersMetadata data, response status code and response headers
    def list_users_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_users_using_get ...'
      end
      # resource path
      local_var_path = '/v2/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'includeAvatars'] = opts[:'include_avatars'] if !opts[:'include_avatars'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'UsersMetadata' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_users_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
