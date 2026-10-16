# frozen_string_literal: true

spec = Gem::Specification.load("niftany.gemspec")

spec.runtime_dependencies.each do |dependency|
  system("gem", "list", "--remote", "--exact", dependency.name)
end
