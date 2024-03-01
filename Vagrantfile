# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define 'ci' do |ci|
    ci.vm.box = 'ubuntu/focal64'
    ci.vm.hostname = 'ci'
    ci.vm.provider 'virtualbox' do |vb|
      vb.memory = '4096'
      vb.check_guest_additions = false
      vb.name = 'ci'
    end
    ci.vm.network 'private_network', ip: '192.168.56.30'
    ci.vm.network 'forwarded_port', guest: 8080, host: 8080, auto_correct: true, host_ip: '127.0.0.1'
  end

  config.vm.provision 'shell', path: 'provisioning/chapter3/user_config.sh'
  config.vm.provision 'shell', path: 'provisioning/chapter3/docker.sh'
end
