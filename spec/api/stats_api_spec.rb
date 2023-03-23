=begin
#Gong API



OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

require 'spec_helper'
require 'json'

# Unit tests for GongAPI::StatsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StatsApi' do
  before do
    # run before each test
    @instance = GongAPI::StatsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StatsApi' do
    it 'should create an instance of StatsApi' do
      expect(@instance).to be_instance_of(GongAPI::StatsApi)
    end
  end

  # unit tests for list_answered_scorecards_using_post
  # Retrieve answered scorecards for applicable reviewed users or scorecards for a date range (/v2/stats/activity/scorecards)
  # Retrieve all the answers for the scorecards that were reviewed during a specified date range, for calls that took place during a specified date range, for specific scorecards or for specific reviewed users.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:stats:scorecards&#x27;.
  # @param body answeredScorecardsRequest
  # @param [Hash] opts the optional parameters
  # @return [AnsweredScorecards]
  describe 'list_answered_scorecards_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_interaction_stats_using_post
  # Retrieve interaction stats for applicable users by date (/v2/stats/interaction)
  # Returns interaction stats for users based on calls that have Whisper turned on.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:stats:interaction&#x27;.
  # @param body statsRequest
  # @param [Hash] opts the optional parameters
  # @return [CompanyUsersIntercationStatsResponse]
  describe 'list_interaction_stats_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_multiple_users_aggregate_activity_using_post
  # Retrieve aggregated activity for defined users by date (/v2/stats/activity/aggregate)
  # Lists the activity of multiple users within the Gong system during a defined period. Given the period, this endpoint returns multiple records, one for each user, with an applicable activity during the period. Each record includes statistics about the user&#x27;s activity.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:stats:user-actions&#x27;.
  # @param body multipleUsersRequest
  # @param [Hash] opts the optional parameters
  # @return [CompanyUsersAggregateActivityResponse]
  describe 'list_multiple_users_aggregate_activity_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_multiple_users_aggregate_by_period_using_post
  # Retrieve aggregated activity for defined users by a date range with grouping in time periods (/v2/stats/activity/aggregate-by-period)
  # Lists the aggregated activity of multiple users within the Gong system for each time period within the defined date range. This endpoint returns multiple records, one for each user. For each user there are items for every time period in the date range, including statistics about the user&#x27;s activity. Records are returned only for users with activity in the range.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:stats:user-actions&#x27;.
  # @param body multipleUsersRequest
  # @param [Hash] opts the optional parameters
  # @return [UsersAggregateByPeriodActivity]
  describe 'list_multiple_users_aggregate_by_period_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_multiple_users_day_by_day_activity_using_post
  # Retrieve daily activity for applicable users for a date range (/v2/stats/activity/day-by-day)
  # Retrieve the daily activity of multiple users within the Gong system for a range of dates. This endpoint returns records including statistics about each user&#x27;s activity, on the daily level. Records are returned only for users with activity in the range.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:stats:user-actions:detailed&#x27;.
  # @param body multipleUsersRequest
  # @param [Hash] opts the optional parameters
  # @return [UsersDayByDayActivity]
  describe 'list_multiple_users_day_by_day_activity_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
