# Spark Cluster Vagrant Template

This is a configuration for Vagrant/VirtualBox to locally deploy a Spork server and 2 Nodes on 3 virtual machines!

Everything should be working as expected:
* Use Ruby 2.1.4 and install the bundle (namely Puppet)
* Ammend your local /etc/hosts file (see manifests/hosts.pp for declaration), although you'll only need spork-master.dev.local to point to 33.33.33.100
* Issue a `vagrant up` 
* The Spork dashboard at http://spork-master.dev.local:8080 should list two running worker nodes
* Use Sport, suspend/resume or halt/restart your cluster as you wish (Master and Nodes will come up properly)

## TODO
* Write a bit more in here...
