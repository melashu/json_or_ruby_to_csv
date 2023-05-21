require File.expand_path('lib/json_or_ruby_to_csv/version',__dir__)

Gem::Specification.new do |spec|
    spec.name = 'json_or_ruby_to_csv'
    spec.version = Version::VERSION
    spec.authors = ['Melashu Amare']
    spec.email = 'meshu.amare@gmail.com'
    spec.license = 'MIT'
    spec.platform = Gem::Platform::RUBY
    spec.summary = 'This gem convert array of hash and ActiveRecord_Relation to CSV formated string'
    spec.description = 'This gem converts arrays of JSON objects, arrays of hashes, arrays of ActionController params, simple hashes, or ActiveRecord relations and objects to a CSV-formatted string.'
    spec.required_ruby_version = '>= 2.6.0'
    spec.files = Dir['lib/**/*.rb', 'LICENSE', 'spec/**/*.rb', 'json_ot_ruby_to_csv.gemspec', 'README.md', 'Gemfile']
    spec.add_development_dependency 'rspec'
    spec.add_development_dependency 'rspec-rails'


    spec.metadata = {
      'rubygems_mfa_required' => 'true',
      'documentation_uri' => 'https://github.com/melashu/json_or_ruby_to_csv',
      'bug_tracker_uri' => 'https://github.com/melashu/json_or_ruby_to_csv/issues',
      'homepage_uri' => 'https://rubygems.org/gems/json_or_ruby_to_csv'
    }

end