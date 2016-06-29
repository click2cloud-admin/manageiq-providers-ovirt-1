$:.push File.expand_path("../lib", __FILE__)

require "manageiq/providers/redhat/version"

Gem::Specification.new do |s|
  s.name        = "manageiq-providers-redhat"
  s.version     = ManageIQ::Providers::Redhat::VERSION
  s.authors     = ["ManageIQ Developers"]
  s.homepage    = "https://github.com/ManageIQ/manageiq"
  s.summary     = "RHV Provider for ManageIQ"
  s.description = "RHV Provider for ManageIQ"
  s.licenses    = ["Apache-2.0"]

  s.files = Dir["{app,config.lib}/**/*"]

  s.add_dependency "rails", ">= 5.0.0.rc2", "< 5.1"

  s.add_dependency "ovirt", "~>0.10.0"
  s.add_dependency "ovirt_metrics", "~>1.2.0"
end
