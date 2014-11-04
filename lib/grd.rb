require 'grd/version'
require 'net/http'

module GRD
	def self.getredirect(in_url)
		val = in_url.dup
		val.prepend('http://') unless !!val['http://']
		uri = URI.parse val
		req = Net::HTTP::Get.new(uri.request_uri)
		Net::HTTP.new(uri.host).start { |server|
			server.request(req)
		}["location"]
	end
end
