# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.ssh.insert_key = false

  # Salt Server - CentOS 8.x
  config.vm.define "server" do |server|
    server.vm.box = "venceslav_dimitrov/centos-stream-8"
    server.vm.hostname = "server"
    server.vm.network "private_network", ip: "192.168.99.100"
    server.vm.provision "shell", path: "add_hosts.sh"
	server.vm.provision "shell", path: "add_packages_centos.sh"
    server.vm.provision "shell", path: "install_salt.sh"

    server.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = 2048
      v.cpus = 1
    end
  end
  
  # Salt Client #2 - CentOS 8.x
  config.vm.define "web" do |web|
    web.vm.box = "venceslav_dimitrov/centos-stream-8"
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.99.101"
    web.vm.provision "shell", path: "add_hosts.sh"
	web.vm.provision "shell", path: "add_packages_centos.sh"
    web.vm.provision "shell", path: "install_minion.sh"

    web.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = 512
      v.cpus = 1
    end
  end

  # Salt Client #3 - Debian 11
  config.vm.define "db" do |db|
    db.vm.box = "venceslav_dimitrov/debian-11"
    db.vm.hostname = "client-db-2"
    db.vm.network "private_network", ip: "192.168.99.102"
    db.vm.provision "shell", path: "add_hosts.sh"
	db.vm.provision "shell", path: "add_packages_debian.sh"
    db.vm.provision "shell", path: "install_minion.sh"

    db.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = 512
      v.cpus = 1
    end
  end
  
end
