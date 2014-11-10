require "bundler/gem_tasks"

task :default => :spec

desc "Ejecutar las espectativas de la clase Exam"
task :spec do
sh "rspec -I. spec/linkedlist_spec.rb" 
end

desc "Ejecutar con documentacion"
task :doc do
sh "rspec -I. spec/linkedlist_spec.rb --format documentation"
end

desc "Ejecutar en formato html"
task :html do
sh "rspec -I. spec/linkedlist_spec.rb --format html -o salida.html"
end
