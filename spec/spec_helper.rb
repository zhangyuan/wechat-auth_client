require 'rubygems'
require "bundler"
require 'bundler/setup'
Bundler.require

require "faraday"
require "multi_json"
require 'webmock/rspec'

require File.expand_path("../../lib/wechat/auth_client", __FILE__)