# frozen_string_literal: true

require_relative 'lib/info/description'

Gem::Specification.new do |spec|
  spec.name    = Info::NAME
  spec.version = Info::VERSION
  spec.authors = [Info::AUTHORS[0][:name]]
  spec.email   = [Info::AUTHORS[0][:email]]

  spec.summary               = Info::SUMMARY
  spec.description           = Info::DESCRIPTION
  spec.homepage              = Info::HOMEPAGE
  spec.license               = Info::LICENSE
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.8')

  spec.metadata['allowed_push_host'] = 'https://github.com/igortice/info'

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
