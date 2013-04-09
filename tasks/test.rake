TEST_SIMULATOR_VERSION = ENV['TEST_SIMULATOR_VERSION']

desc 'Run test on iOS simulator'
task :sim_test => [IOS_SIM, File.expand_path('lib/libmruby.a'), File.expand_path('submodules/mruby/build/i386/test/mrbtest.a')] do
  sh %Q{killall "iOS Simulator" || true}
  sh %Q{killall "iPhone Simulator" || true}
  sh %Q{xcodebuild -configuration Debug -sdk iphonesimulator -target mrbtest clean build}
  sh %Q{#{IOS_SIM} launch build/Debug-iphonesimulator/mrbtest.app #{TEST_SIMULATOR_VERSION ? "--sdk #{TEST_SIMULATOR_VERSION}" : ''}}
end
