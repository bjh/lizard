
module Lizard
  class Reptile
    def initialize(options)
    @options = options
  end

  def clean(csv)
    # NOTE: removing anything after 5 columns wide
    output = []

    CSV.parse(csv) do |row|
      output << row.slice(0...5)
    end
    
    output
  end

  def format(cleaned)
    if @options.transpose
      cleaned = cleaned.transpose
    end
    
    cleaned.map do |row|
      row.join(',')
    end.join("\r\n")
  end

  def eat(output)
    format(clean(output.split(/^\s*$/).last.strip))
  end

  def execute
    puts eat(`cloc --csv #{@options[:path]}`)
  end

  end
end
  
