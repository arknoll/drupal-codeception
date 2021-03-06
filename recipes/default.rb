#
# Cookbook Name:: drupal-codeception
# Recipe:: default
#
# Copyright (C) 2014 Alex Knoll Alex@AlexKnoll.com
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

log "replace this with a meaningful resource"

directory node[:codeception][:dir] do
  owner node[:codeception][:user]
  group node[:codeception][:group]
  mode 00755
  action :create
  recursive true
  not_if { ::File.exists?(node[:codeception][:dir]) }
end

remote_file "#{node[:codeception][:dir]}/codecept.phar" do
  source node[:codeception][:source]
  action :create
end

bash "Install Codeception" do
  cwd node[:codeception][:dir]
  code <<-EOH
    php codecept.phar bootstrap
  EOH
end
