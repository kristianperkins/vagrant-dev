# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder "~", "/vagrant"
  config.vm.provision :shell do |shell|
    shell.inline = "apt-get update --fix-missing;
                    mkdir -p /etc/puppet/modules;
                    puppet module install puppetlabs/java"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file = "base.pp"
    puppet.module_path = "puppet/modules"
    puppet.options = "--verbose"
  end
end
 
