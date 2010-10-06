require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:development, :doc)
rescue Bundler::BundlerError => e
  STDERR.puts e.message
  STDERR.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'jeweler'

Jeweler::Tasks.new do |gem|
  gem.name = 'ffi-cairo'
  gem.licenses = ['MIT']
  gem.summary = %Q{FFI bindings for Cairo}
  gem.description = %Q{Ruby FFI bindings for the Cairo graphics library.}
  gem.email = 'postmodern.mod3@gmail.com'
  gem.homepage = %Q{http://github.com/postmodern/ffi-cairo}
  gem.authors = ['Postmodern']
  gem.requirements = ['libcairo >= 1.10.0']
  gem.has_rdoc = 'yard'
end

require 'spec/rake/spectask'

desc "Run all specifications"
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs += ['lib', 'spec']
  spec.spec_files = FileList['spec/**/*_spec.rb']
  spec.spec_opts = ['--options', '.specopts']
end
task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new
