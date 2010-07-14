$:.unshift File.dirname(__FILE__) + "/gen-rb/"

require 'rubygems'
require "bundler"
Bundler.setup

require 'lib/gen-rb/hbase'

class HbaseThrift
  
end