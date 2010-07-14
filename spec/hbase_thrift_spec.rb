$:.unshift File.dirname(__FILE__) + "/../"

require 'lib/hbase_thrift'

require 'rubygems'
require "bundler"
Bundler.setup(:test)

HBASE_CONNECTION_PARAMS = ['127.0.0.1', 9090]

describe HbaseThrift do
  it "connects to a running HBase thrift server" do
    lambda do
      t = Thrift::BufferedTransport.new(Thrift::Socket.new(*HBASE_CONNECTION_PARAMS))
      p = Thrift::BinaryProtocol.new(t)
      c = Apache::Hadoop::Hbase::Thrift::Hbase::Client.new(p)
      t.open
      
      c.getTableNames
    end.should_not raise_exception
  end
end