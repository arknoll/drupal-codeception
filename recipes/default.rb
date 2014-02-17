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

directory node[:codecpetion][:dir] do
  owner node[:codecpetion][:user]
  group node[:codecpetion][:group]
  mode 0775
  recursive true
end

remote_file "{node[:codeception][:dir]}/codecept.phar" do
  source node[:codeception][:source]
  action :create_if_missing
end

bash "Install Codeception" do
  cwd node[:codeception][:dir]
  code <<-EOH
    php codecept.phar bootstrap
  EOH
end
