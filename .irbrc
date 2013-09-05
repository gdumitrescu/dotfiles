require 'rubygems'
require 'interactive_editor'
require "irb"
require 'irb/completion'
require 'map_by_method'
require 'what_methods'
require 'pp'

# Enable colors
require 'wirble'
Wirble.init
Wirble.colorize

# the default colors suck, mod to use your own
colors = Wirble::Colorize.colors.merge({
  # set the comma color to blue
  :comma => :green,
  :refers => :green,
  })
Wirble::Colorize.colors = colors

IRB.conf[:USE_READLINE] = true
IRB.conf[:AUTO_INDENT]  = true

#require 'awesome_print'

#unless IRB.version.include?('DietRB')
#  IRB::Irb.class_eval do
#    def output_value
#      ap @context.last_value
#    end
#  end
#else # MacRuby
#  IRB.formatter = Class.new(IRB::Formatter) do
#    def inspect_object(object)
#      object.ai
#     end
#   end.new
#end
