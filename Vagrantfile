# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.dns.tld = "sgeorgi.local"

  config.vm.define "spark-master" do |client|
    client.vm.box = "puphpet/ubuntu1404-x64"
    client.vm.hostname = "spark-master"
    client.vm.network "private_network", ip: "33.33.33.100"
    client.vm.synced_folder "templates", "/tmp/vagrant-puppet/templates"

    client.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "spark-master.pp"
      puppet.module_path = "modules"
      puppet.options = ["--templatedir", "/tmp/vagrant-puppet/templates"]
    end

    client.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
    end
  end

  config.vm.define "spark-node-1" do |client|
    client.vm.box = "puphpet/ubuntu1404-x64"
    client.vm.hostname = "spark-node-1"
    client.vm.network "private_network", ip: "33.33.33.101"
    client.vm.synced_folder "templates", "/tmp/vagrant-puppet/templates"

    client.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "spark-node.pp"
      puppet.module_path = "modules"
      puppet.options = ["--templatedir", "/tmp/vagrant-puppet/templates"]
    end

    client.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
    end
  end

  config.vm.define "spark-node-2" do |client|
    client.vm.box = "puphpet/ubuntu1404-x64"
    client.vm.hostname = "spark-node-2"
    client.vm.network "private_network", ip: "33.33.33.102"
    client.vm.synced_folder "templates", "/tmp/vagrant-puppet/templates"

    client.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "spark-node.pp"
      puppet.module_path = "modules"
      puppet.options = ["--templatedir", "/tmp/vagrant-puppet/templates"]
    end

    client.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
    end
  end


end
