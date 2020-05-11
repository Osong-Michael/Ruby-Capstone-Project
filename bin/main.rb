#!/usr/bin/env ruby

require_relative '../lib/load_file.rb'
require_relative '../lib/line_space.rb'
require 'colorize'

file = ARGV.shift
new_file = LoadFile.new(file)
space_check = LineSpace.new
puts
puts 'Checking File...'.cyan
puts

space_check.check_line_spacing(new_file.file_content)
puts
puts 'All Done!'.cyan
