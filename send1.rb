#!/bin/env ruby

require 'socket'
require 'optparse'

options = {}

parser = OptionParser.new do |parser|
  parser.banner = "Usage: send1.rb [options]"

  parser.on("-h", "--help", "Show this help message") do | |
    puts parser
  end

  parser.on("-H", "--host HOST", "The name of the destination host/container") do |v|
    options[:host] = v
  end
  parser.on("-p", "--port PORT", "The name of the destination port") do |v|
    options[:port] = v
  end
  parser.on("-f", "--file FILE", "The name of the file to read and send") do |v|
    options[:file] = v
  end
end
parser.parse!

if [:host, :port, :file].any? { |k| options[k].nil? }
  puts parser
  exit 1
end

s = UDPSocket.new
s.connect options[:host], options[:port]
s.send File.read(options[:file]), 0
