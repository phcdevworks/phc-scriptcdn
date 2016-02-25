# Load UI Dependecies
require 'jquery-rails'
require 'sass-rails'
require 'bootstrap-sass'
require 'font-awesome-rails'

module Phcscriptcdn
	class Engine < ::Rails::Engine
		
		# Give PHCScriptCDN Own Namespace
		isolate_namespace Phcscriptcdn

		# Testing Generator
		config.generators do |g|
			g.test_framework :rspec,
			fixtures: true,
			view_specs: false,
			helper_specs: false,
			routing_specs: false,
			controller_specs: true,
			request_specs: false
			g.fixture_replacement :factory_girl, dir: "spec/factories"
		end
		
		# Load PHCScriptCDN Helper Files (Prevents Problems)
		config.to_prepare do
			ApplicationController.helper(ApplicationHelper)
		end

	end
end
