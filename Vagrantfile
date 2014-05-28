# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    require 'yaml'
    settings = YAML::load(File.read(File.dirname(__FILE__) + '/sites.yaml'))

    config.vm.box = "hashicorp/precise32"

    config.vm.network "private_network", ip: "192.168.50.4"

    config.vm.network :forwarded_port, guest: 80, host: 8000, auto_correct: true
    config.vm.network :forwarded_port, guest: 22, host: 2223, auto_correct: true

    config.vm.provision :shell, :path => "scripts/install/base.sh"
    config.vm.provision :shell, :path => "scripts/install/mysql.sh"
    config.vm.provision :shell, :path => "scripts/install/php.sh"
    config.vm.provision :shell, :path => "scripts/install/other.sh"

    config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777", "fmode=666"]

    settings["sites"].each do |site|
        config.vm.provision "shell" do |s|
            s.inline = "bash /vagrant/scripts/nginx-site.sh $1 $2"
            s.args = [site["map"], site["to"]]
        end
    end
end
