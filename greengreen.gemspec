# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{greengreen}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jason Morrison"]
  s.date = %q{2009-04-01}
  s.email = %q{jmorrison@thoughtbot.com}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "VERSION.yml", "lib/greengreen", "lib/greengreen/autotest.rb", "lib/greengreen.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/jasonm/greengreen}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{GreenGreen is a tool for assuring 100% product quality.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
