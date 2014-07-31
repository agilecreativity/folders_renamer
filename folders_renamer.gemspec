# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "folders_renamer/version"
Gem::Specification.new do |spec|
  spec.name          = "folders_renamer"
  spec.version       = FoldersRenamer::VERSION
  spec.authors       = ["Burin Choomnuan"]
  spec.email         = ["agilecreativity@gmail.com"]
  spec.summary       = %q{Bulk cleanup/rename folders using with your choice of string (dash, dot, underscore, etc).
                          Make the folder consistence and simple to use, work recursively from any directory}
  spec.description   = %q{Bulk cleanup/rename folders name that contain special characters with valid string (dash, dot, underscore, etc)}
  spec.homepage      = "https://github.com/agilecreativity/folders_renamer"
  spec.required_ruby_version = ">= 2.1.0"
  spec.license       = "MIT"
  spec.files         = Dir.glob("{bin,lib}/**/*") + %w[Gemfile
                                                       Rakefile
                                                       folders_renamer.gemspec
                                                       README.md
                                                       CHANGELOG.md
                                                       LICENSE
                                                       .rubocop.yml
                                                       .gitignore]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = Dir.glob("{test}/**/*")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor", "~> 0.19.1"
  spec.add_runtime_dependency "agile_utils", "~> 0.2.1"
  spec.add_runtime_dependency "filename_cleaner", "~> 0.4.2"

  spec.add_development_dependency "awesome_print", "~> 1.2.0"
  spec.add_development_dependency "bundler", "~> 1.6.2"
  spec.add_development_dependency "gem-ctags", "~> 1.0.6"
  spec.add_development_dependency "guard", "~> 2.6.1"
  spec.add_development_dependency "guard-minitest", "~> 2.3.1"
  spec.add_development_dependency "minitest", "~> 5.4.0"
  spec.add_development_dependency "minitest-spec-context", "~> 0.0.3"
  spec.add_development_dependency "minitest-filesystem", "~> 1.2.0"
  spec.add_development_dependency "pry", "~> 0.10.0"
  spec.add_development_dependency "pry-byebug", "~> 1.3.3"
  spec.add_development_dependency "rake", "~> 10.3.2"
  spec.add_development_dependency "rubocop", "~> 0.24.1"
  spec.add_development_dependency "yard", "~> 0.8.7"
end
