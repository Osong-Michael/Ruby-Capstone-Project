class LoadFile
  attr_accessor :file, :file_content

  def initialize
    @file = file
    @file_content = file_content

    file_content = get_content(file)
  end

  def get_content(file)
    contents = ''
    File.open(file, 'r') { |strings| contents = strings.readlines.map(&:chomp) }
    scanned_content = contents.collect { |string| scanned = StringScanner.new(string) }
  
    scanned_content
  end
end