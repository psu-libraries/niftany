# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'niftany'
  spec.version       = '0.3.0'
  spec.authors       = ['Adam Wead']
  spec.email         = ['amsterdamos@gmail.com']
  spec.summary       = 'Manages configurations and versions of linters used in projects at '\
                       'Penn State University Libraries.'
  spec.description   = 'Combining "nittany" and "nifty" into one, super-nice gem that lints all our code at once.'
  spec.homepage      = 'https://github.com/psu-libraries/niftany'
  spec.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_dependency 'colorize',      '~> 0.8.1'
  spec.add_dependency 'erb_lint',      '~> 0.0.22'
  spec.add_dependency 'rubocop',       '~> 0.61'
  spec.add_dependency 'rubocop-rspec', '~> 1.3'
  spec.add_dependency 'scss_lint',     '~> 0.55'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
end
