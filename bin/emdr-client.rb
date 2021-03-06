#!/usr/bin/env ruby

require 'pathname'
ENV['BUNDLE_GEMFILE'] ||= File.expand_path("../../Gemfile",
  Pathname.new(__FILE__).realpath)

require 'rubygems'
require 'bundler/setup'

require 'emdr'

s = Emdr.supervise
s.actors.each { |a| a.run }
