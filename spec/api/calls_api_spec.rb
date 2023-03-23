=begin
#Gong API

#<h2>Overview</h2> <p> The Gong API allows you to: </p> <ol> <li> Receive the following information from Gong: <ol type=\"a\"> <li> Your company's <a href=\"#tag--Calls\">calls</a> in Gong </li> <li> Your company's <a href=\"#tag--Users\">users</a> in Gong </li> <li> Your company's user <a href=\"#tag--Stats\">stats</a> in Gong </li> <li> Your company's user <a href=\"#tag--Settings\">settings</a> in Gong </li> <li> Your company's <a href=\"#tag--Library\">libraries</a> in Gong </li> </ol></li> <li> <a href=\"#post-/v2/calls\">Upload</a> new or  <a href=\"#put-/v2/calls/-id-/media\">update</a>  call recordings in Gong, in order to support cases where you have an internal system that records  calls or obtains them from a third-party entity. </li> <li> <a href=\"#post-/v2/data-privacy/erase-data-for-email-address\">Data Privacy</a>:  Delete users and all their associated elements.</li> <li> Upload <a href=\"#tag--CRM\">CRM</a> data into Gong.  </li> </ol> <p>Base URL for all API calls is <a href=\"https://us-55616.api.gong.io\"> https://us-55616.api.gong.io </a> </p> <h2>Authentication</h2>  <p> There are two ways to retrieve credentials to the Gong Public API: </p> <ol><li>Retrieve Manually:<br> <p> In the <a href=\"https://app.gong.io/company/api\">Gong API Page</a> (you must be a technical administrator in Gong), click \"Create\" to receive an <b>Access Key</b>  and an <b>Access Key Secret</b>.<br> </p> <p> Use the Basic Authorization HTTP header (as per <a target=\"_blank\" href=\"https://www.rfc-editor.org/rfc/rfc7617.txt\">RFC</a>) to access the Public API as shown below:<br> <code>Authorization: Basic &lt;token&gt;</code><br> </p> <p> To create the basic token, combine the <b>Access Key</b> and the <b>Access Key Secret</b> with  colon (:) and then encode in Base64 as following:<br> <code>Base64(&lt;accessKey&gt; : &lt;accessKeySecret&gt;)</code><br><br> </p></li> <li>Retrieve through OAuth<br> <p> To obtain the Bearer token, follow the steps described in the <a target=\"_blank\" href=\"https://help.gong.io/hc/en-us/articles/360056677792\">Gong OAuth Guide</a>. <br></p> <p> After obtaining the token, use the Bearer Authorization HTTP header (as per <a target=\"_blank\" href=\"https://www.rfc-editor.org/rfc/rfc6750.txt\">RFC</a>) to access the Public API as shown below:<br> <code>Authorization: Bearer &lt;token&gt;</code> </p> </li></ol> <h2>Limits</h2>  <p> By default Gong limits your company's access to the service to 3 API calls per second, and 10,000 API calls per day. </p> <p> When the rate of API calls exceeds these limits an HTTP status code <b>429</b> is returned and a <b>Retry-After</b> header indicates  how many seconds to wait before making a new request. </p><p> If required, contact help@gong.io to change these limits. </p>  <h2>Cursors</h2>  <p> Some API calls that return a list are limited in the amount of records they may return, so multiple API calls may be  required to bring all records. Such an API call also returns a <b>records</b> field, which contains the number of records  in the current page, the current page number and the total number of records. </p> <p> In cases where the total number of records exceeds the number of records thus far retrieved, the <b>records</b> field will also  contain a <b>cursor</b> field which can be used to access the next page of records. To retrieve the next page, repeat the API call with  the <b>cursor</b> value as supplied by the previous API call. All other request inputs should remain the same. </p> <h2>Forward Compatibility</h2>  <p> When coding a system to accept Gong data, take into account that Gong may, without prior warning, add fields to the JSON output.  It is recommended to future proof your code so that it disregards all JSON fields you don't actually use.  </p><p></p>

OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

require 'spec_helper'
require 'json'

# Unit tests for GongAPI::CallsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CallsApi' do
  before do
    # run before each test
    @instance = GongAPI::CallsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CallsApi' do
    it 'should create an instance of CallsApi' do
      expect(@instance).to be_instance_of(GongAPI::CallsApi)
    end
  end

  # unit tests for add_call_recording_using_put
  # Add call media (/v2/calls/{id}/media)
  # Adds a call media, recorded by a telephony system (PBX) or other media recording facility. Gong accepts call recordings in various audio and video file formats, including WAV, MP3, MP4, MKV and FLAC. If uploading a dual-channel (stereo) file separated by speaker, make sure to specify which channel correspondsto the company team member (rep) in the parties/mediaChannelId parameter of the Add New Call operation.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:create&#x27;.
  # @param id callId returned from &#x27;Add New Call&#x27; request
  # @param [Hash] opts the optional parameters
  # @option opts [String] :media_file 
  # @return [NewCallRecordingResponse]
  describe 'add_call_recording_using_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_call_using_post
  # Add new call (/v2/calls)
  # When using this endpoint, either provide a downloadMediaUrl or use the returned callId in a follow-up request to /v2/calls/{id}/media to upload the media file.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:create&#x27;.
  # @param body newCallAddingRequest
  # @param [Hash] opts the optional parameters
  # @return [NewCallAddingResponse]
  describe 'add_call_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_call_transcripts_using_post
  # Retrieve transcripts of calls by date or callIds (/v2/calls/transcript)
  # Lists the transcripts of calls that took place during a specified date range and have specified callIds.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:read:transcript&#x27;.
  # @param body callsRequest
  # @param [Hash] opts the optional parameters
  # @return [CallTranscripts]
  describe 'get_call_transcripts_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_call_using_get
  # Retrieve data for a specific call (/v2/calls/{id})
  # Retrieve data for a specific call.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:read:basic&#x27;.
  # @param id Gong&#x27;s unique numeric identifier for the call (up to 20 digits).
  # @param [Hash] opts the optional parameters
  # @return [SpecificCall]
  describe 'get_call_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_calls_extensive_using_post
  # Retrieve detailed call data by various filters (/v2/calls/extensive)
  # Lists detailed call data for calls that took place during a specified date range, have specified call IDs or hosted by specified users.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:read:extensive&#x27;.  Moreover, clients requesting media download URLs by the contentSelector.exposedFields.media field should also have the scope &#x27;api:calls:read:media-url&#x27;.
  # @param body callsRequest
  # @param [Hash] opts the optional parameters
  # @return [Calls]
  describe 'list_calls_extensive_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_calls_using_get
  # Retrieve call data by date range (/v2/calls)
  # List calls that took place during a specified date range.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:calls:read:basic&#x27;.
  # @param from_date_time The date from which to list calls, in the ISO-8601 format (e.g., &#x27;2018-02-18T02:30:00-07:00&#x27; or &#x27;2018-02-18T08:00:00Z&#x27;, where Z stands for UTC); if not specified, the calls start with the earliest recorded call. For web-conference calls recorded by Gong, the date denotes its scheduled time, otherwise, it denotes its actual start time.
  # @param to_date_time The date until which to list calls, in the ISO-8601 format (e.g., &#x27;2018-02-18T02:30:00-07:00&#x27; or &#x27;2018-02-18T08:00:00Z&#x27;, where Z stands for UTC); if not specified, the calls end with the latest recorded call. For web-conference calls recorded by Gong, the date denotes its scheduled time, otherwise, it denotes its actual start time.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor When paging is needed, provide the value supplied by the previous API call to bring the following page of records.
  # @option opts [String] :workspace_id Optional Workspace identifier, if supplied the API will return only the calls belonging to this workspace.
  # @return [CallsResponse]
  describe 'list_calls_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_crm_calls_manual_association_using_get
  # List all calls that were manually associated with CRM objects (/v2/calls/manual-crm-associations) in Beta Phase
  # Returns a list of all calls that were manually associated or re-associated with CRM account and deal/opportunity since a given time.  Actions will be listed in the ascending order of their timing.   Notice if a call was associated and later re-associated the API will return both events.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:crm-calls:manual-association:read&#x27;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor When paging is needed, provide the value supplied by the previous API call to bring the following page of records.
  # @option opts [String] :from_date_time Association time filter - only the associations made after that time will be listed. The time is in the ISO-8601 format (e.g., &#x27;2018-02-18T02:30:00-07:00&#x27; or &#x27;2018-02-18T08:00:00Z&#x27;, where Z stands for UTC); if not specified all association events will be listed.
  # @return [ManualAssociationResponse]
  describe 'list_crm_calls_manual_association_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
