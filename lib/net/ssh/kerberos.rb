require 'net/ssh'
require 'net/ssh/kerberos/constants'
#require 'net/ssh/kerberos/kex'
if RUBY_PLATFORM.include?('win') && ! RUBY_PLATFORM.include?('dar'); then
  require 'net/ssh/kerberos/sspi'
else
  $stderr.puts "warning: Kerberos support for non-Windows systems is not yet implemented."
end
require 'net/ssh/authentication/methods/gssapi_with_mic'

module Net
  module SSH
    module Kerberos
    end
  end
end
