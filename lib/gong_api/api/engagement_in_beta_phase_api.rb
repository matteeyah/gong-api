=begin
#Gong API



OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

module GongAPI
  class EngagementInBetaPhaseApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Report event of a content share (/v2/customer-engagement/content/shared)
    # Push engagement events into Gong and display them as events in Gong’s activity timeline, when a Gong user shares content with external participants (for example, a contract was “shared” by the account executive with his prospects)  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:engagement-data:write'.
    # @param body request
    # @param [Hash] opts the optional parameters
    # @return [BaseResponse]
    def content_shared_using_put(body, opts = {})
      data, _status_code, _headers = content_shared_using_put_with_http_info(body, opts)
      data
    end

    # Report event of a content share (/v2/customer-engagement/content/shared)
    # Push engagement events into Gong and display them as events in Gong’s activity timeline, when a Gong user shares content with external participants (for example, a contract was “shared” by the account executive with his prospects)  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:engagement-data:write&#x27;.
    # @param body request
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseResponse, Integer, Hash)>] BaseResponse data, response status code and response headers
    def content_shared_using_put_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EngagementInBetaPhaseApi.content_shared_using_put ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EngagementInBetaPhaseApi.content_shared_using_put"
      end
      # resource path
      local_var_path = '/v2/customer-engagement/content/shared'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'BaseResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EngagementInBetaPhaseApi#content_shared_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Report event of a content view (/v2/customer-engagement/content/viewed)
    # Push engagement events into Gong and display them as events in Gong’s activity timeline, when a content is viewed by an external participant (for example, a contract was “viewed” by the prospect)  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:engagement-data:write'.
    # @param body request
    # @param [Hash] opts the optional parameters
    # @return [BaseResponse]
    def content_viewed_using_put(body, opts = {})
      data, _status_code, _headers = content_viewed_using_put_with_http_info(body, opts)
      data
    end

    # Report event of a content view (/v2/customer-engagement/content/viewed)
    # Push engagement events into Gong and display them as events in Gong’s activity timeline, when a content is viewed by an external participant (for example, a contract was “viewed” by the prospect)  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:engagement-data:write&#x27;.
    # @param body request
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseResponse, Integer, Hash)>] BaseResponse data, response status code and response headers
    def content_viewed_using_put_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EngagementInBetaPhaseApi.content_viewed_using_put ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EngagementInBetaPhaseApi.content_viewed_using_put"
      end
      # resource path
      local_var_path = '/v2/customer-engagement/content/viewed'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'BaseResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EngagementInBetaPhaseApi#content_viewed_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Report event of a custom action (/v2/customer-engagement/action)
    # Push engagement events into Gong and display them as events in Gong’s activity timeline, when a content is engaged by an external participant (for example, a contract was “signed” by the prospect)  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:engagement-data:write'.
    # @param body request
    # @param [Hash] opts the optional parameters
    # @return [BaseResponse]
    def custom_action_using_put(body, opts = {})
      data, _status_code, _headers = custom_action_using_put_with_http_info(body, opts)
      data
    end

    # Report event of a custom action (/v2/customer-engagement/action)
    # Push engagement events into Gong and display them as events in Gong’s activity timeline, when a content is engaged by an external participant (for example, a contract was “signed” by the prospect)  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:engagement-data:write&#x27;.
    # @param body request
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseResponse, Integer, Hash)>] BaseResponse data, response status code and response headers
    def custom_action_using_put_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EngagementInBetaPhaseApi.custom_action_using_put ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EngagementInBetaPhaseApi.custom_action_using_put"
      end
      # resource path
      local_var_path = '/v2/customer-engagement/action'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'BaseResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EngagementInBetaPhaseApi#custom_action_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
