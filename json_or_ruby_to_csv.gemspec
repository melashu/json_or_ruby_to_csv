require File.expand_path('lib/json_or_ruby_to_csv/version',__dir__)

Gem::Specification.new do |spec|
    spec.name = 'json_or_ruby_to_csv'
    spec.version = Version::VERSION
    spec.authors = ['Melashu Amare']
    spec.email = 'meshu.amare@gmail.com'
    spec.license = 'MIT'
    spec.platform = Gem::Platform::RUBY
    spec.summary = 'This gem convert array of hash and ActiveRecord_Relation to CSV formated string'
    spec.description = 'This gem convert array of json object, array of hash, simple hash or ActiveRecord relation and objects to CSV formated string'
    spec.required_ruby_version = '>= 2.6.0'
    spec.files = Dir['lib/**/*.rb', 'LICENSE', 'spec/**/*.rb', 'json_ot_ruby_to_csv.gemspec', 'README.md', 'Gemfile']
    spec.add_development_dependency 'rspec'
    spec.add_development_dependency 'rspec-rails'


    spec.metadata = {
      'rubygems_mfa_required' => 'true'
    }

end