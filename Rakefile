load 'tasks/os_version.rake'
load 'tasks/build.rake'
load 'tasks/simulator.rake'
load 'tasks/test.rake'

task :default => :run

desc 'clean all'
task :clean_all => :clean do
  sh "rm -f lib/libmruby.a"
end
