# -*- mode: ruby -*-
# vi: set ft=ruby :

# Set your project name
PROJECT_NAME = 'asakharov'

options = {
  'ip' => '192.168.33.10',
  'cpus' => 2,
  'memory' => 4096,

  'folders' => {
    '.' => {
      'path'    => '/home/vagrant/asakharov',
      'owner'   => 'vagrant',
      'group'   => 'vagrant',
      'options' => ['dmode=775'],
    }
  }
}

Vagrant.configure(2) do |config|
    config.vm.hostname = 'asakharov.ru'
    config.vm.box = "ubuntu/bionic64"
    config.vm.network "forwarded_port", guest: 8000, host: 8080
    config.vm.network "forwarded_port", guest: 3306, host: 3307

    options['folders'].each do |source_folder, mountpoint|
        mountpoint['owner'] ||= 'root'
        mountpoint['group'] ||= 'root'
        mountpoint['options'] ||= ['dmode=755', 'ro']
        config.vm.synced_folder source_folder, mountpoint['path'],
            owner: mountpoint['owner'],
            group: mountpoint['group'],
            mount_options: mountpoint['options']
    end

    config.ssh.forward_agent = true

    config.vm.provision :shell, :path => "vagrant/provision.sh"

    if File.exist? "Vagrantfile.local"
        instance_eval File.read("Vagrantfile.local"), "Vagrantfile.local"
    end
end
