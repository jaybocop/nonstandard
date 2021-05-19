# frozen_string_literal: true

require_relative 'lib/nonstandard/version'

Gem::Specification.new do |spec|
  spec.name          = 'nonstandard'
  spec.version       = Nonstandard::VERSION
  spec.authors       = ['Jay Dorsey']
  spec.email         = ['191564+jaydorsey@users.noreply.github.com']

  spec.summary       = 'Opinionated Style Guide'
  spec.homepage      = "https://github.com/jaybocop/nonstandard"
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'rubocop'
  spec.add_dependency 'rubocop-rspec'
  spec.add_dependency 'rubocop-performance'
  spec.add_dependency 'rubocop-rails'
  spec.add_dependency 'rubocop-faker'
  spec.add_dependency 'rubocop-rake'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
