#
# Cookbook Name:: drupal-codeception
# Attributes:: default
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

default[:codeception][:dir]   = "/assets/codeception"
default[:codeception][:user] = "www-data"
default[:codeception][:group] = "www-data"
default[:codeception][:source] = "http://codeception.com/codecept.phar"
