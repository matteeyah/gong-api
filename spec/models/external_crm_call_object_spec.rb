=begin
#Gong API



OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for GongAPI::ExternalCrmCallObject
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ExternalCrmCallObject' do
  before do
    # run before each test
    @instance = GongAPI::ExternalCrmCallObject.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExternalCrmCallObject' do
    it 'should create an instance of ExternalCrmCallObject' do
      expect(@instance).to be_instance_of(GongAPI::ExternalCrmCallObject)
    end
  end
  describe 'test attribute "fields"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "object_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "object_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Account", "Opportunity"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.object_type = value }.not_to raise_error
      # end
    end
  end

end
