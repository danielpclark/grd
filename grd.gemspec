$:.push File.expand_path("../lib", __FILE__)
require "grd/version"

Gem::Specification.new do |s|
  s.name        = 'grd'
  s.version     = GRD::VERSION
  s.licenses    = ['The MIT License (MIT)']
  s.summary     = "Get url redirection on the command line."
  s.description = "Get url redirection on the command line. 'grd www.example.com'"
  s.authors     = ["Daniel P. Clark / 6ftDan(TM)"]
  s.email       = 'webmaster@6ftdan.com'
  s.files       = ["lib/grd.rb","lib/grd/version.rb","bin/grd"]
  s.homepage    = 'http://www.github.com/danielpclark/grd'
  s.platform    = 'ruby'
  s.bindir      = 'bin'
  s.executables = 'grd'
  s.require_paths = ['lib']
end
