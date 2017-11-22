name             "nnginx"
maintainer       "Phil Cohen"
maintainer_email "github@phlippers.net"
license          "MIT"
description      "Installs/configures nginx"
long_description "Please refer to README.md"
version          "0.6.1"

recipe "nnginx", "The default recipe which sets up the repository."
recipe "nnginx::configuration", "Internal recipe to setup the configuration files."
recipe "nnginx::service", "Internal recipe to setup the service definition."
recipe "nnginx::server", "Install and configure the `nginx` package."
recipe "nnginx::debug", "Install and configure the `nginx-debug` package."

depends "apt"

supports "debian"
supports "ubuntu"
