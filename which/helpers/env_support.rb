require 'yaml'
require_relative '../.local.rb'

#TEST_ENV can be set at command line, defaults to local, can have dev, qa, staging, pre_prod, prod
#ENV['TEST_ENV'] ||= 'local'
BASE_URL = YAML.load_file(".config/config.yaml")[ENV['TEST_ENV']][:host]