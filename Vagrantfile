# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder "~", "/vagrant"
  config.vm.provision :shell do |shell|
    shell.inline = "mkdir -p /etc/puppet/modules;
                    puppet module install stankevich-python;
                    puppet module install puppetlabs/java;"
  end

  if Vagrant.has_plugin? "vagrant-cachier"
    config.cache.scope = :machine
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file = "base.pp"
    puppet.module_path = "puppet/modules"
    puppet.options = "--verbose --debug"
  end
end
 
