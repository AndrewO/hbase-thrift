$:.unshift File.dirname(__FILE__)
$:.unshift File.expand_path('gen-rb', File.dirname(__FILE__))

require 'rubygems'
require 'thrift'

require File.expand_path('gen-rb/hbase', File.dirname(__FILE__))
