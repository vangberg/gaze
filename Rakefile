require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "gaze"
    s.summary = "Serves up a folder of Markdown or Textile formatted files via Sinatra."
    s.email = "ichverstehe@gmail.com"
    s.homepage = "http://github.com/ichverstehe/gaze"
    s.authors = ["Harry Vangberg", "Mikkel Malmberg"]
    s.files = ["bin/gaze"]
    s.executables = ["gaze"]

    s.add_dependency "sinatra", [">= 0.3.2"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
