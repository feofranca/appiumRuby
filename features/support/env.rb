require 'appium_lib'
require 'appium_lib_core'
require 'cucumber'
require 'yaml'

if ENV['AMBIENTE']=='dev'
	caps = YAML::load_file(File.join(__dir__, 'dev.yml'))
elsif ENV['AMBIENTE']=='prd'
  	caps = YAML::load_file(File.join(__dir__, 'prd.yml'))
else
caps = YAML::load_file(File.join(__dir__, 'local.yml'))
end

$driver = Appium::Driver.new(caps, true)

require_relative '../../features/framework/page_base'
require_relative 'page_helper'

World(PageBase)
