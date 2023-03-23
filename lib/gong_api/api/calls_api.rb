=begin
#Gong API



OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

module GongAPI
  class CallsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add call media (/v2/calls/{id}/media)
    # Adds a call media, recorded by a telephony system (PBX) or other media recording facility. Gong accepts call recordings in various audio and video file formats, including WAV, MP3, MP4, MKV and FLAC. If uploading a dual-channel (stereo) file separated by speaker, make sure to specify which channel correspondsto the company team member (rep) in the parties/mediaChannelId parameter of the Add New Call operation.  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:calls:create'.
    # @param id callId returned from &#x27;Add New Call&#x27; request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :media_file 
    # @return [NewCallRecordingResponse]
    def add_call_recording_using_put(id, opts = {})
      data, _status_code, _headers = add_call_recording_using_put_with_http_info(id, opts)
      data
    end

    # Add call media (/v2/calls/{id}/media)
    # Adds a call media, recorded by a telephony system (PBX) or other media recording facility. Gong accepts call recordings in various audio and video file formats, including WAV, MP3, MP4, MKV and FLAC. If uploading a dual-channel (stereo) file separated by speaker, make sure to specify which channel correspondsto the company team member (rep) in the parties/mediaChannelId parameter of the Add New Call operation.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:create&#x27;.
    # @param id callId returned from &#x27;Add New Call&#x27; request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :media_file 
    # @return [Array<(NewCallRecordingResponse, Integer, Hash)>] NewCallRecordingResponse data, response status code and response headers
    def add_call_recording_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallsApi.add_call_recording_using_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CallsApi.add_call_recording_using_put"
      end
      # resource path
      local_var_path = '/v2/calls/{id}/media'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['mediaFile'] = opts[:'media_file'] if !opts[:'media_file'].nil?

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'NewCallRecordingResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallsApi#add_call_recording_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add new call (/v2/calls)
    # When using this endpoint, either provide a downloadMediaUrl or use the returned callId in a follow-up request to /v2/calls/{id}/media to upload the media file.  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:calls:create'.
    # @param body newCallAddingRequest
    # @param [Hash] opts the optional parameters
    # @return [NewCallAddingResponse]
    def add_call_using_post(body, opts = {})
      data, _status_code, _headers = add_call_using_post_with_http_info(body, opts)
      data
    end

    # Add new call (/v2/calls)
    # When using this endpoint, either provide a downloadMediaUrl or use the returned callId in a follow-up request to /v2/calls/{id}/media to upload the media file.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:create&#x27;.
    # @param body newCallAddingRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(NewCallAddingResponse, Integer, Hash)>] NewCallAddingResponse data, response status code and response headers
    def add_call_using_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallsApi.add_call_using_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CallsApi.add_call_using_post"
      end
      # resource path
      local_var_path = '/v2/calls'

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

      return_type = opts[:return_type] || 'NewCallAddingResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallsApi#add_call_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve transcripts of calls by date or callIds (/v2/calls/transcript)
    # Lists the transcripts of calls that took place during a specified date range and have specified callIds.  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:calls:read:transcript'.
    # @param body callsRequest
    # @param [Hash] opts the optional parameters
    # @return [CallTranscripts]
    def get_call_transcripts_using_post(body, opts = {})
      data, _status_code, _headers = get_call_transcripts_using_post_with_http_info(body, opts)
      data
    end

    # Retrieve transcripts of calls by date or callIds (/v2/calls/transcript)
    # Lists the transcripts of calls that took place during a specified date range and have specified callIds.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:read:transcript&#x27;.
    # @param body callsRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallTranscripts, Integer, Hash)>] CallTranscripts data, response status code and response headers
    def get_call_transcripts_using_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallsApi.get_call_transcripts_using_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CallsApi.get_call_transcripts_using_post"
      end
      # resource path
      local_var_path = '/v2/calls/transcript'

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

      return_type = opts[:return_type] || 'CallTranscripts' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallsApi#get_call_transcripts_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve data for a specific call (/v2/calls/{id})
    # Retrieve data for a specific call.  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:calls:read:basic'.
    # @param id Gong&#x27;s unique numeric identifier for the call (up to 20 digits).
    # @param [Hash] opts the optional parameters
    # @return [SpecificCall]
    def get_call_using_get(id, opts = {})
      data, _status_code, _headers = get_call_using_get_with_http_info(id, opts)
      data
    end

    # Retrieve data for a specific call (/v2/calls/{id})
    # Retrieve data for a specific call.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:read:basic&#x27;.
    # @param id Gong&#x27;s unique numeric identifier for the call (up to 20 digits).
    # @param [Hash] opts the optional parameters
    # @return [Array<(SpecificCall, Integer, Hash)>] SpecificCall data, response status code and response headers
    def get_call_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallsApi.get_call_using_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CallsApi.get_call_using_get"
      end
      # resource path
      local_var_path = '/v2/calls/{id}'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'SpecificCall' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallsApi#get_call_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve detailed call data by various filters (/v2/calls/extensive)
    # Lists detailed call data for calls that took place during a specified date range, have specified call IDs or hosted by specified users.  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:calls:read:extensive'.  Moreover, clients requesting media download URLs by the contentSelector.exposedFields.media field should also have the scope 'api:calls:read:media-url'.
    # @param body callsRequest
    # @param [Hash] opts the optional parameters
    # @return [Calls]
    def list_calls_extensive_using_post(body, opts = {})
      data, _status_code, _headers = list_calls_extensive_using_post_with_http_info(body, opts)
      data
    end

    # Retrieve detailed call data by various filters (/v2/calls/extensive)
    # Lists detailed call data for calls that took place during a specified date range, have specified call IDs or hosted by specified users.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:read:extensive&#x27;.  Moreover, clients requesting media download URLs by the contentSelector.exposedFields.media field should also have the scope &#x27;api:calls:read:media-url&#x27;.
    # @param body callsRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(Calls, Integer, Hash)>] Calls data, response status code and response headers
    def list_calls_extensive_using_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallsApi.list_calls_extensive_using_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CallsApi.list_calls_extensive_using_post"
      end
      # resource path
      local_var_path = '/v2/calls/extensive'

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

      return_type = opts[:return_type] || 'Calls' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallsApi#list_calls_extensive_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve call data by date range (/v2/calls)
    # List calls that took place during a specified date range.  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:calls:read:basic'.
    # @param from_date_time The date from which to list calls, in the ISO-8601 format (e.g., &#x27;2018-02-18T02:30:00-07:00&#x27; or &#x27;2018-02-18T08:00:00Z&#x27;, where Z stands for UTC); if not specified, the calls start with the earliest recorded call. For web-conference calls recorded by Gong, the date denotes its scheduled time, otherwise, it denotes its actual start time.
    # @param to_date_time The date until which to list calls, in the ISO-8601 format (e.g., &#x27;2018-02-18T02:30:00-07:00&#x27; or &#x27;2018-02-18T08:00:00Z&#x27;, where Z stands for UTC); if not specified, the calls end with the latest recorded call. For web-conference calls recorded by Gong, the date denotes its scheduled time, otherwise, it denotes its actual start time.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor When paging is needed, provide the value supplied by the previous API call to bring the following page of records.
    # @option opts [String] :workspace_id Optional Workspace identifier, if supplied the API will return only the calls belonging to this workspace.
    # @return [CallsResponse]
    def list_calls_using_get(from_date_time, to_date_time, opts = {})
      data, _status_code, _headers = list_calls_using_get_with_http_info(from_date_time, to_date_time, opts)
      data
    end

    # Retrieve call data by date range (/v2/calls)
    # List calls that took place during a specified date range.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:read:basic&#x27;.
    # @param from_date_time The date from which to list calls, in the ISO-8601 format (e.g., &#x27;2018-02-18T02:30:00-07:00&#x27; or &#x27;2018-02-18T08:00:00Z&#x27;, where Z stands for UTC); if not specified, the calls start with the earliest recorded call. For web-conference calls recorded by Gong, the date denotes its scheduled time, otherwise, it denotes its actual start time.
    # @param to_date_time The date until which to list calls, in the ISO-8601 format (e.g., &#x27;2018-02-18T02:30:00-07:00&#x27; or &#x27;2018-02-18T08:00:00Z&#x27;, where Z stands for UTC); if not specified, the calls end with the latest recorded call. For web-conference calls recorded by Gong, the date denotes its scheduled time, otherwise, it denotes its actual start time.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor When paging is needed, provide the value supplied by the previous API call to bring the following page of records.
    # @option opts [String] :workspace_id Optional Workspace identifier, if supplied the API will return only the calls belonging to this workspace.
    # @return [Array<(CallsResponse, Integer, Hash)>] CallsResponse data, response status code and response headers
    def list_calls_using_get_with_http_info(from_date_time, to_date_time, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallsApi.list_calls_using_get ...'
      end
      # verify the required parameter 'from_date_time' is set
      if @api_client.config.client_side_validation && from_date_time.nil?
        fail ArgumentError, "Missing the required parameter 'from_date_time' when calling CallsApi.list_calls_using_get"
      end
      # verify the required parameter 'to_date_time' is set
      if @api_client.config.client_side_validation && to_date_time.nil?
        fail ArgumentError, "Missing the required parameter 'to_date_time' when calling CallsApi.list_calls_using_get"
      end
      # resource path
      local_var_path = '/v2/calls'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fromDateTime'] = from_date_time
      query_params[:'toDateTime'] = to_date_time
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'workspaceId'] = opts[:'workspace_id'] if !opts[:'workspace_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CallsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallsApi#list_calls_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all calls that were manually associated with CRM objects (/v2/calls/manual-crm-associations) in Beta Phase
    # Returns a list of all calls that were manually associated or re-associated with CRM account and deal/opportunity since a given time.  Actions will be listed in the ascending order of their timing.   Notice if a call was associated and later re-associated the API will return both events.  When accessed through a Bearer token authorization method, this endpoint requires the scope 'api:crm-calls:manual-association:read'.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor When paging is needed, provide the value supplied by the previous API call to bring the following page of records.
    # @option opts [String] :from_date_time Association time filter - only the associations made after that time will be listed. The time is in the ISO-8601 format (e.g., &#x27;2018-02-18T02:30:00-07:00&#x27; or &#x27;2018-02-18T08:00:00Z&#x27;, where Z stands for UTC); if not specified all association events will be listed.
    # @return [ManualAssociationResponse]
    def list_crm_calls_manual_association_using_get(opts = {})
      data, _status_code, _headers = list_crm_calls_manual_association_using_get_with_http_info(opts)
      data
    end

    # List all calls that were manually associated with CRM objects (/v2/calls/manual-crm-associations) in Beta Phase
    # Returns a list of all calls that were manually associated or re-associated with CRM account and deal/opportunity since a given time.  Actions will be listed in the ascending order of their timing.   Notice if a call was associated and later re-associated the API will return both events.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:crm-calls:manual-association:read&#x27;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor When paging is needed, provide the value supplied by the previous API call to bring the following page of records.
    # @option opts [String] :from_date_time Association time filter - only the associations made after that time will be listed. The time is in the ISO-8601 format (e.g., &#x27;2018-02-18T02:30:00-07:00&#x27; or &#x27;2018-02-18T08:00:00Z&#x27;, where Z stands for UTC); if not specified all association events will be listed.
    # @return [Array<(ManualAssociationResponse, Integer, Hash)>] ManualAssociationResponse data, response status code and response headers
    def list_crm_calls_manual_association_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallsApi.list_crm_calls_manual_association_using_get ...'
      end
      # resource path
      local_var_path = '/v2/calls/manual-crm-associations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'fromDateTime'] = opts[:'from_date_time'] if !opts[:'from_date_time'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ManualAssociationResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallsApi#list_crm_calls_manual_association_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
