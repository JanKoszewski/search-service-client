task :console do
  $: << File.expand_path("../lib", __FILE__)
  require 'search_service_client'

  ARGV.clear
  require 'irb'
  IRB.start
end