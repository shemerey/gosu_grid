require 'rubygems'
require 'ostruct'
require 'bundler/setup'
require 'gosu/all'

Dir[File.expand_path(File.join(File.dirname(__FILE__),'support','**','*.rb'))].each {|f| require f}

RSpec.configure do |config|

end
