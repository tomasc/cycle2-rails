#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'open-uri'

desc "Download the latest cycle2.js"
task :update do 
  base_output = "app/assets/javascripts/"
  
  cycle2_core_url = 'http://malsup.github.com/jquery.cycle2.core.js'
  outputfile = File.join(base_output, File.basename(cycle2_core_url))
  open(outputfile, 'wb') do |file|
    file << open(cycle2_core_url).read
  end
  
  components = %w[    
    http://malsup.github.com/jquery.cycle2.autoheight.js
    http://malsup.github.com/jquery.cycle2.caption.js
    http://malsup.github.com/jquery.cycle2.command.js
    http://malsup.github.com/jquery.cycle2.hash.js
    http://malsup.github.com/jquery.cycle2.loader.js
    http://malsup.github.com/jquery.cycle2.pager.js
    http://malsup.github.com/jquery.cycle2.prevnext.js
    http://malsup.github.com/jquery.cycle2.progressive.js
    http://malsup.github.com/jquery.cycle2.tmpl.js
  ]
  components.each do |component_url|
    component_outputfile = File.join(base_output, File.basename(component_url))
    open(component_outputfile, 'wb') do |file|
      file << "//= require jquery.cycle2.core\n\n"
      file << open(component_url).read
    end        
  end
  
  cycle2_base_outfile =  File.join(base_output, 'jquery.cycle2.js')
  open(cycle2_base_outfile, 'wb') do |file|
    file << "//= require jquery.cycle2.core\n"
    components.each do |component|
      asset_name = File.basename(component, File.extname(component))
      file << "//= require #{asset_name}\n"
    end
    file << "\n"
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
    
  plugins.each do |plugin_url|
    plugin_outputfile = File.join(base_output, File.basename(plugin_url))
    open(plugin_outputfile, 'wb') do |file|
      file << "//= require jquery.cycle2\n\n"
      file << open(plugin_url).read
    end
  end
  
  
  cycle2_all_outfile =  File.join(base_output, 'jquery.cycle2.all.js')
  open(cycle2_all_outfile, 'wb') do |file|
    file << "//= require jquery.cycle2\n"
    plugins.each do |plugin_url|
      asset_name = File.basename(plugin_url, File.extname(plugin_url))
      file << "//= require #{asset_name}\n"
    end
    file << "\n"
  end 

end
