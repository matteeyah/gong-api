=begin
#Gong API



OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for GongAPI::Meeting
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Meeting' do
  before do
    # run before each test
    @instance = GongAPI::Meeting.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Meeting' do
    it 'should create an instance of Meeting' do
      expect(@instance).to be_instance_of(GongAPI::Meeting)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
