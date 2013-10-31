$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/fraccion_rspec.rb --format documentation"
end

desc "Ejecutar como HTML"
task :thtml do
  sh "rspec -I. spec/fraccion_rspec.rb --format html > rake.html"
sh "firefox rake.html"
end
