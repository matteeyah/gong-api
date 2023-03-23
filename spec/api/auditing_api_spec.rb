=begin
#Gong API



OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

require 'spec_helper'
require 'json'

# Unit tests for GongAPI::AuditingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuditingApi' do
  before do
    # run before each test
    @instance = GongAPI::AuditingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuditingApi' do
    it 'should create an instance of AuditingApi' do
      expect(@instance).to be_instance_of(GongAPI::AuditingApi)
    end
  end

  # unit tests for list_logs_using_get
  # Retrieve logs data by type and time range (/v2/logs)
  # List log entries that took place during a specified time range.  When accessed through a Bearer token authorization method, this endpoint requires the scope &#x27;api:logs:read&#x27;.
  # @param from_date_time The time from which to retrieve log records, in the ISO-8601 format (e.g., &#x27;2018-02-18T02:30:00-07:00&#x27; or &#x27;2018-02-18T08:00:00Z&#x27;, where Z stands for UTC).
  # @param log_type Type of logs requested.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor When paging is needed, provide the value supplied by the previous API call to bring the following page of records.
  # @option opts [String] :to_date_time The time until which to retrieve log records, in the ISO-8601 format (e.g., &#x27;2018-02-18T02:30:00-07:00&#x27; or &#x27;2018-02-18T08:00:00Z&#x27;, where Z stands for UTC); if not specified, the logs end with the latest recorded log.
  # @return [LogsResponse]
  describe 'list_logs_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
