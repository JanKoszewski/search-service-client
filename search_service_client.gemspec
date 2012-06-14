Gem::Specification.new do |gem|
  gem.authors       = ["Jan Koszewski", "Darrell Rivera", "Austen Ito"]
  gem.email         = ["jan.koszewski@livingsocial.com", "darrell.rivera@livingsocial.com", "austen.ito@livingsocial.com"]
  gem.description   = %q{Gem client for interacting with the OctoChat - SearchService API}
  gem.summary       = %q{Gem client for interacting with the OctoChat - SearchService API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "search_service_client"
  gem.require_paths = ["lib"]
  gem.version       = 0.1

  gem.add_runtime_dependency 'faraday'
end