#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'open-uri'

desc "Download the latest cycle2.js"
task :update do
  url = "http://malsup.github.com/jquery.cycle2.js"
  outputfile = "vendor/assets/javascripts/cycle2-rails/jquery.cycle2.js"

  open(outputfile, 'wb') do |file|
    file << open(url).read
  end

end
