# -*- encoding: utf-8 -*-
# lib = File.expand_path('lib/', __FILE__)
# $:.unshift lib unless $:.include?(lib)
# 
# require 'hbase_thift/version'

# The library's version will always match the version of HBase that the thrift file came from.
module HbaseThrift
  VERSION = "0.20.5"
end

Gem::Specification.new do |s|
  s.name        = "hbase-thrift"
  s.version     = HbaseThrift::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andrew O'Brien"]
  s.email       = ["obrien.andrew@gmail.com"]
  s.homepage    = "http://github.com/AndrewO/hbase-thrift"
  s.summary     = "Just the thrift interface for HBase."
  s.description = "The barebones Thrift interface for HBase allowing anyone to create higher level HBase libraries."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "hbase-thrift"

  s.add_development_dependency "rspec"

  s.files        = Dir.glob("lib/**/*") + %w(LICENSE.txt README.textile)
  s.require_paths = ['lib', 'lib/gen-rb']
end