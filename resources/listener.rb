#
# Author:: Baptiste Courtois (<b.courtois@criteo.com>)
# Cookbook Name:: winrm-config
# Resource:: listener
#
# Copyright:: Copyright (c) 2015 Criteo.
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

default_action :configure
actions :configure, :delete

attribute :address,                default: '*',     kind_of: String
attribute :certificate_thumbprint, default: nil,     kind_of: String
attribute :enabled,                default: true,    kind_of: [TrueClass, FalseClass]
attribute :hostname,               default: nil,     kind_of: String
attribute :port,                   default: 5985,    kind_of: Fixnum
attribute :transport,              default: :HTTP,   kind_of: Symbol, equal_to: [:HTTP, :HTTPS]
attribute :url_prefix,             default: 'wsman', kind_of: String

def key_name
  @key ||= "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\WSMAN\\Listener\\#{address}+#{transport}"
end
