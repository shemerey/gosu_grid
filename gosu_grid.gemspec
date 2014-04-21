# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gosu/all'

Gem::Specification.new do |spec|
  spec.name          = 'gosu_grid'
  spec.version       = Gosu::Grid::VERSION
  spec.authors       = ['Anton Shemerey']
  spec.email         = ['shemerey@gmail.com']
  spec.summary       = %q{Gosu::Grid simple game grids}
  spec.description   = %q{This gem provide basic functional to draw game grid and move stuff around}
  spec.homepage      = 'https://github.com/shemerey/gosu_grid'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'gosu'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
end
