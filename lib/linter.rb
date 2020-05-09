require 'strscan'

module Linter
  def check_line_spacing(file_content)
    file_content.each_with_index do |ele, index|
      new_line = index + 1
      line_spacing_before(new_line, ele, '{')
      line_spacing_after(new_line, ele, ',')
      line_spacing_after(new_line, ele, ':')
    end
  end

  def line_spacing_before(line, str, char)
    str.reset
    new_str = str.scan_until(Regexp.new(char))
    while str.matched?
      new_str = StringScanner.new(new_str.reverse)
      new_str.skip(Regexp.new(char))
      new_str.scan(/\s+/)
      puts "#{line}: x Expected single space before \"#{char}\"" if new_str.matched != ' '
      new_str = str.scan_until(Regexp.new(char))
    end
  end

  def line_spacing_after(line, str, char)
    str.reset
    str.scan_until(Regexp.new(char))
    while str.matched?
      str.scan(/\s+/)
      puts "#{line}: x Expected single space after \"#{char}\"" if str.matched != ' '
      str.scan_until(Regexp.new(char))
    end
  end
end
