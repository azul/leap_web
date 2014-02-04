require 'rubygems'
require 'minitest/autorun'

BASE_DIR = File.expand_path('../..', __FILE__)
$:.unshift File.expand_path('lib', BASE_DIR)

require 'mocha/setup'

require 'tapicero/version'
Tapicero::CONFIGS << "test/config.yaml"
require 'tapicero'
