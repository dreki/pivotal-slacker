Gem::Specification.new do |s|
  s.name        = 'pivotal-slacker'
  s.version     = '1.0.1'
  s.date        = '2013-02-04'
  s.summary     = "A command-line client for Pivotal Tracker."
  s.description = "If you're overwhelmed with or tired of using the Pivotal Tracker web UI, use this!"
  s.authors     = ["Sean Gilbertson"]
  s.email       = 'sean.gilbertson@gmail.com'
  s.files       = ["lib/formatter.rb", "lib/app_config.rb"]
  s.executables << "pivotal-slacker"
  s.homepage    =
    'https://github.com/dreki/pivotal-slacker'
end