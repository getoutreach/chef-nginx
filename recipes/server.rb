#
# Cookbook Name:: nginx
# Recipe:: server
#

include_recipe "nnginx"

# ensure config files don't get trampled by chef
package "nginx-common" do
  options %(-o Dpkg::Options::="--force-confdef")
  only_if { %w[ppa phusion].include?(node["nginx"]["repository"]) }
end

package node["nginx"]["package_name"] do
  version node["nginx"]["version"]
end

include_recipe "nnginx::service"
include_recipe "nnginx::configuration"
include_recipe "nnginx::enabledisablesite"
