#!/usr/bin/env ruby

require_relative '../lib/load_file.rb'
require_relative '../lib/line_space.rb'
require_relative '../lib/indent_check.rb'
require 'colorize'

file = ARGV.shift
new_file = LoadFile.new(file)
space_check = LineSpace.new
indent_check = IndentationCheck.new
puts
puts 'Checking File...'.cyan
puts

space_check.check_line_spacing(new_file.file_content)
indent_check.indentation_check(new_file.file_content)
puts
puts 'All Done!'.cyan
