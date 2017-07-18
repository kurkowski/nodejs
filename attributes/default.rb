#
# Cookbook Name:: nodejs
# Attributes:: nodejs
#
# Copyright 2010-2012, Promet Solutions
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform_family']
when 'smartos', 'rhel', 'debian', 'fedora', 'mac_os_x', 'suse', 'amazon'
  default['nodejs']['install_method'] = 'package'
else
  default['nodejs']['install_method'] = 'source'
end

default['nodejs']['version'] = '6.11.1'

default['nodejs']['prefix_url']['node'] = 'https://nodejs.org/dist/'

default['nodejs']['source']['url']      = nil # Auto generated
default['nodejs']['source']['checksum'] = '0187d4e4ef00cee2b70b0ad0689100050654f26629775d097b145d0d8727f9a0'

default['nodejs']['binary']['url'] = nil # Auto generated
default['nodejs']['binary']['checksum']['linux_x64'] = '175e00ad504f0dca5a4d2af0f941e27ea0bd3178529fd1a9c3d67f3d75afd864'
default['nodejs']['binary']['checksum']['linux_x86'] = '6471fbb402e2e26086e125abb6dfe51d1f1aaee4c7cc769539490de6bca635c3'
default['nodejs']['binary']['checksum']['linux_arm64'] = 'f8c898c39ecc9806fd6b5a3b49f037fee3cfe823238b8c119b4f6f8b7869168e'

default['nodejs']['make_threads'] = node['cpu'] ? node['cpu']['total'].to_i : 2

default['nodejs']['manage_node'] = true
