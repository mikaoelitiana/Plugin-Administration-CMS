#fichiers requis
require 'rubygems'
require 'test/unit'
require 'active_support'
require File.expand_path(File.join(ENV['RAILS_ROOT'], 'config/environment'
#Variables d'environnement
ENV['RAILS_ENV'] = 'test'
ENV['RAILS_ROOT'] ||= File.dirname(__FILE__) + '/../../../..'


