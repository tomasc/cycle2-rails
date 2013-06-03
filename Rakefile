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
  
  plugins = %w[http://malsup.github.com/jquery.cycle2.carousel.js 
  http://malsup.github.com/jquery.cycle2.ie-fade.js 
  http://malsup.github.com/jquery.cycle2.scrollVert.js 
  http://malsup.github.com/jquery.cycle2.shuffle.js
  http://malsup.github.com/jquery.cycle2.tile.js
  http://malsup.github.com/jquery.cycle2.caption2.js
  http://malsup.github.com/jquery.cycle2.center.js
  http://malsup.github.com/jquery.cycle2.swipe.js
  http://malsup.github.com/jquery.cycle2.video.js]
  
  base_output = "vendor/assets/javascripts/cycle2-rails/"
  
  plugins.each do |plugin_url|
    plugin_outputfile = File.join(base_output, File.basename(plugin_url))
    open(plugin_outputfile, 'wb') do |file|
      file << "//= require jquery.cycle2\n\n"
      file << open(plugin_url).read
    end
  end

end
