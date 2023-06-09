=begin
#Gong API



OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for GongAPI::CallAccessWithPermissionLevel
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CallAccessWithPermissionLevel' do
  before do
    # run before each test
    @instance = GongAPI::CallAccessWithPermissionLevel.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CallAccessWithPermissionLevel' do
    it 'should create an instance of CallAccessWithPermissionLevel' do
      expect(@instance).to be_instance_of(GongAPI::CallAccessWithPermissionLevel)
    end
  end
  describe 'test attribute "permission_level"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["all / managers-team / report-to-them / own / none"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.permission_level = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "team_lead_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
