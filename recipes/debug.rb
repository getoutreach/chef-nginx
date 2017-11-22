#
# Cookbook Name:: nginx
# Recipe:: debug
#

include_recipe "nnginx"

package "nginx-debug"

include_recipe "nnginx::configuration"
include_recipe "nnginx::service"
