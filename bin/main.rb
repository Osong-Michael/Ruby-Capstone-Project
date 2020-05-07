require_relative '../lib/load_file.rb'
require_relative '../lib/linter.rb'

include Linter # rubocop: disable Style/MixinUsage

file = ARGV.shift
new_file = LoadFile.new(file)
puts
puts 'Checking File...'
puts

check_line_spacing(new_file.file_content)
puts
puts 'All Done!'
