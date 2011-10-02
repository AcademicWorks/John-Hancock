# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "john-hancock"
  gem.homepage = "http://github.com/AcademicWorks/john-hancock"
  gem.license = "MIT"
  gem.summary = %Q{Sign any hash as one would sign an api request}
  gem.description = %Q{Creating a signature from a hash has many uses.  You can use this for making authenticated requests to an api.  It can also be used to compare two hashes and see if their contents are equal}
  gem.email = "aaorn@scrug.gs"
  gem.authors = ["Aaron Scruggs"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test