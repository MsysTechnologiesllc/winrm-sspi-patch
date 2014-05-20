# Patch for Windows Remote Management (WinRM) for Ruby

Overrides and enhances the ruby core win32 sspi module to add support to encrypt/decrypt data to be sent over channel, example using SSP Negotiate auth.
Additionaly overrides the HTTPClient::WWWAuth code to add support for encryption/decryption of data sent during the NTLM auth over negotiate. Also Overrides HTTPClient::SSPINegotiateAuth to remember user credentials, original library code relies on the current login user credentials on the client machine. 


## Install
`gem install winrm-sspi-patch`

## Example
```ruby
require 'winrm'
require 'winrm-sspi-patch'  # apply patch
endpoint = http://mywinrmhost:5985/wsman
winrm = WinRM::WinRMWebService.new(endpoint, :sspinegotiate, :user => ".\administrator", :pass => "adminpasswd")
winrm.cmd('ipconfig /all') do |stdout, stderr|
  STDOUT.print stdout
  STDERR.print stderr
end
```

= LICENSE:

Author:: Kaustubh Deorukhkar (<kaustubh@clogeny.com>)
Copyright:: Copyright (c) 2014 Chef Software, Inc.
License:: Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.