require 'grd/version'
require 'net/http'

module GRD
	def self.getredirect(in_url)
		val = in_url.dup
		val.prepend('http://') unless !!val['http://']
		uri = URI.parse val
		req = Net::HTTP::Get.new(uri.request_uri)
		puts Net::HTTP.new(uri.host).start { |server|
			server.request(req)
		}["location"]
	end
end

begin
  GRD::getredirect(ARGV[0])
rescue Exception => e
  puts "Get ReDirect: Get the URL redirection."
  puts "by Daniel P. Clark / License: The MIT License"
  puts
  puts "  Usage: grd www.example.com"
  puts
end