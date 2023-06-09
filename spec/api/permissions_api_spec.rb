=begin
#Gong API



OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

require 'spec_helper'
require 'json'

# Unit tests for GongAPI::PermissionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PermissionsApi' do
  before do
    # run before each test
    @instance = GongAPI::PermissionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PermissionsApi' do
    it 'should create an instance of PermissionsApi' do
      expect(@instance).to be_instance_of(GongAPI::PermissionsApi)
    end
  end

  # unit tests for add_users_access_to_calls_using_put
  # Give individual users access to calls (/v2/calls/users-access)
  # Give individual users access to calls.  If a user already has access (perhaps the call was shared with them, or they have access through their permission profiles) the request will have no effect.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:call-user-access:write&#x27;.
  # @param body callsUsersAccessAddDto
  # @param [Hash] opts the optional parameters
  # @return [BaseResponse]
  describe 'add_users_access_to_calls_using_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_permission_profile_using_post
  # Create permission profile (/v2/permission-profile)
  # Create a permission profile in a given workspace.
  # @param body permissionProfileDTO
  # @param workspace_id Workspace identifier.  You can retrieve the workspace using the \&quot;workspaces\&quot; (under \&quot;Settings\&quot;) API.
  # @param [Hash] opts the optional parameters
  # @return [PermissionProfileResponse]
  describe 'create_permission_profile_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_users_access_to_calls_using_delete
  # Remove specific individual users access from calls (/v2/calls/users-access)
  # Remove individual user access from calls. The request can only remove access previously given by the /v2/calls/users-access API.  If a given user does not have access to the call, they will be unaffected.  If a given user does have access to the call, but not through the pubic API (for example if the call was shared with the user), the user&#x27;s access will remain unchanged.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:call-user-access:write&#x27;.
  # @param body callsUsersAccessDeleteDto
  # @param [Hash] opts the optional parameters
  # @return [BaseResponse]
  describe 'delete_users_access_to_calls_using_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_permission_profile_using_get
  # Permission profile for a given profile Id (/v2/permission-profile)
  # Returns a permission profile.
  # @param profile_id Permission profile identifier.
  # @param [Hash] opts the optional parameters
  # @return [PermissionProfileResponse]
  describe 'get_permission_profile_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_users_access_to_calls_using_get
  # Retrieve users that have specific individual access to calls (/v2/calls/users-access)
  # Returns a list of users who have received individual access to calls through the API.  This endpoint doesn&#x27;t cover user that have access for other reasons (such as sharing recipients, or access through permission profiles).  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:call-user-access:read&#x27;.
  # @param body callsAccessGetDto
  # @param [Hash] opts the optional parameters
  # @return [CallsAccessDetailsResponse]
  describe 'get_users_access_to_calls_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_permission_profile_users_using_get
  # List all users attached to a given permission profile (/v2/permission-profile/users)
  # Returns a list of all users whose access is controlled by the given permission profile.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:users:read&#x27;.
  # @param profile_id Permission profile identifier.
  # @param [Hash] opts the optional parameters
  # @return [PermissionProfileUsersResponse]
  describe 'list_permission_profile_users_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_permission_profile_using_get
  # List all company permission profiles for a given workspace (/v2/all-permission-profiles)
  # Returns a list of all permission profiles.  The listing is in the alphabetical order of the profile names.
  # @param workspace_id Workspace identifier, the API will return only the profiles belonging to this workspace.  You can retrieve the workspace using the \&quot;workspaces\&quot; (under \&quot;Settings\&quot;) API.
  # @param [Hash] opts the optional parameters
  # @return [PermissionProfilesResponse]
  describe 'list_permission_profile_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_permission_profile_using_put
  # Update permission profile (/v2/permission-profile)
  # Update a permission profile.
  # @param body permissionProfileDTO
  # @param profile_id Permission profile identifier.
  # @param [Hash] opts the optional parameters
  # @return [PermissionProfileResponse]
  describe 'update_permission_profile_using_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
