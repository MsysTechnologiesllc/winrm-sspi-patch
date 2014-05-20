# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "winrm-sspi-patch/version"

Gem::Specification.new do |s|
  s.name        = "winrm-sspi-patch"
  s.version     = Winrmsspipatch::VERSION
  s.platform    = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.md", "LICENSE" ]
  s.authors     = ["Kaustubh Deorukhkar"]
  s.email       = ["kaustubh@clogeny.com"]
  s.homepage    = "https://github.com/opscode/winrm-sspi"
  s.summary     = %q{Gem that adds functionality to support encryption/decryption over sspi using winrm gem}
  s.description = s.summary

  s.add_dependency "winrm", "~> 1.1.2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
