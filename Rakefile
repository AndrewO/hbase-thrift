require 'rubygems'
require 'rake'

namespace "thrift" do
  task "gen" do
    sh "thrift --gen rb -o lib/ lib/Hbase.thrift"
  end
end