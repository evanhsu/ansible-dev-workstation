# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure('2') do |config|
  config.vm.define 'ansible-dev-machine' do |c|
    c.vm.box = 'bento/ubuntu-16.04'
    c.vm.network :private_network, ip: '192.168.33.100'
    c.vm.hostname = 'ansible-dev-machine.local'

    c.vm.provider :virtualbox do |vb|
      vb.name = 'ansible-dev-machine'
    end

    c.vm.provision :ansible do |ansible|
      ansible.playbook = 'main.yml'
      ansible.sudo = true
      ansible.inventory_path = 'vagrant-inventory'
      ansible.host_key_checking = false
      ansible.verbose = 'v'
      ansible.extra_vars = {
      }
    end
  end
end