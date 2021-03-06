##
# $Id: $
##

##
#
# RFB protocol support
#
# by Joshua J. Drake <jduck>
#
# Based on:
# vnc_auth_none contributed by Matteo Cantoni <goony[at]nothink.org>
# vnc_auth_login contributed by carstein <carstein.sec[at]gmail.com>
#
##

module Rex
module Proto
module RFB

DefaultPort = 5900

# Version information
MajorVersion = 3
# NOTE: We will emulate whatever minor version the server reports.

# Security types
class AuthType
	Invalid = 0
	None = 1
	VNC = 2
	RA2 = 5
	RA2ne = 6
	Tight = 16
	Ultra = 17
	TLS = 18
	VeNCrypt = 19
	GtkVncSasl = 20
	MD5Hash = 21
	ColinDeanXVP = 22

	def self.to_s(num)
		self.constants.each { |c|
			return c.to_s if self.const_get(c) == num
		}
		'Unknown'
	end
end

end
end
end
