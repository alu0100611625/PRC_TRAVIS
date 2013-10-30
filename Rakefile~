task :default => :doc

desc "Ejecutar las espectativas de la clase Fraccion"
task :spec do
  sh "rspec -I. spec/fraccion_rspec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/fraccion_rspec.rb --format documentation"
end

desc "Ejecutar como HTML"
task :thtml do
  sh "rspec -I. spec/fraccion_rspec.rb --format html > rake.html"
sh "firefox rake.html"
end
