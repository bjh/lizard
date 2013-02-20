require 'trollop'
require 'csv'

module Lizard
  def self.args
    opts = Trollop::options do
      version "lizard 0.1 - uses cloc [brew install cloc]"
      banner <<-BANNER
    Let the lizard make `cloc --csv` output just a little but prettier
      BANNER

      opt :path, "which folder to scan", :short => :p, :type => :string
      opt :transpose, "transpose the csv rows into colums", :short => :t
    end

    Trollop::die :path, "no directory for the lizard to eat!" if opts[:path].nil?
    Trollop::die :path, "#{opts[:path]} is not a directory" if !File.directory?(opts[:path])

    opts
  end
end

