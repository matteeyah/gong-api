=begin
#Gong API



OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for GongAPI::CallUploadContext
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CallUploadContext' do
  before do
    # run before each test
    @instance = GongAPI::CallUploadContext.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CallUploadContext' do
    it 'should create an instance of CallUploadContext' do
      expect(@instance).to be_instance_of(GongAPI::CallUploadContext)
    end
  end
  describe 'test attribute "objects"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "system"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Salesforce"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.system = value }.not_to raise_error
      # end
    end
  end

end
