# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name    = 'note-transpose'
  spec.version = '0.1.0'
  spec.authors = ['Vidur Murali']
  spec.email   = ['vidur@monkeychai.com']

  spec.summary  = 'A CLI tool to transpose notes by half steps'
  spec.homepage = 'https://github.com/vyder/note-transpose'
  spec.license  = 'MIT'

  spec.files         = Dir['lib/**/*.rb'] + %w[README.md]
  spec.bindir        = 'bin'
  spec.executables   = 'note-transpose'
  spec.require_paths = ['lib']
end
