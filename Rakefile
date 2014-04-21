require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new

task :default => :spec
task :test => :spec

task :console do
  require 'pry'
  require 'gosu/grid'
  ARGV.clear
  Pry.start
end
