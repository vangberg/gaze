# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gaze}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Harry Vangberg", "Mikkel Malmberg"]
  s.date = %q{2009-04-01}
  s.default_executable = %q{gaze}
  s.email = %q{ichverstehe@gmail.com}
  s.executables = ["gaze"]
  s.files = ["bin/gaze"]
  s.homepage = %q{http://github.com/ichverstehe/gaze}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Serves up a folder of Markdown or Textile formatted files via Sinatra.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    s.add_dependency(%q<sinatra>, [">= 0.3.2"])
  else
    s.add_dependency(%q<sinatra>, [">= 0.3.2"])
  end
end
