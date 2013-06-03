# Cycle2-Rails

Integrates [jquery.cycle2.js](http://jquery.malsup.com/cycle2) with the Rails asset pipeline.

Cycle2 is a versatile slideshow plugin for jQuery built around ease-of-use. It supports a declarative initialization style that allows full customization without any scripting. Simply include the plugin, declare your markup, and Cycle2 does the rest.

Cycle2 was written by Mike Alsup. 

# For Rails 3.1+ only

## Installation

Add this line to your application's Gemfile:

    gem 'cycle2-rails'

And then execute:

    $ bundle

## Usage

In your application.js

    //= require jquery.cycle2

Additionaly you can use Cycle2 plugins like this:

    //= require jquery.cycle2.carousel
    //= require jquery.cycle2.swipe

Note jquery.cycle2 included automatically if you use any plugin.
    
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
