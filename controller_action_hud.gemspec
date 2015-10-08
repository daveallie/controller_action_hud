# -*- encoding: utf-8 -*-
$: << File.expand_path('../lib', __FILE__)
require 'controller_action_hud/version'

Gem::Specification.new do |gem|
  gem.authors       = "Dave Allie"
  gem.email         = "dave@daveallie.com"
  gem.description   = "HUD to show current controller and action"
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/daveallie/controller_action_hud"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "controller_action_hud"
  gem.require_paths = ["lib"]
  gem.version       = ControllerActionHUD::VERSION

  gem.post_install_message = "Remember to put <%= controller_action_hud_widget if Rails.env.development? %> into your app layout. Stay hyped."
end
