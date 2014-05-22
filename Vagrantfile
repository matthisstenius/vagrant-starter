# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    require 'yaml'
    settings = YAML::load(File.read(File.dirname(__FILE__) + '/sites.yaml'))

    config.vm.box = "precise32"

    config.vm.box_url = "http://files.vagrantup.com/precise32.box"

    config.vm.network :private_network, ip: "192.168.33.10"

    config.vm.network :forwarded_port, guest: 80, host: 8000, auto_correct: true
    config.vm.network :forwarded_port, guest: 22, host: 2223

    config.vm.provision :shell, :path => "scripts/install/base.sh"
    config.vm.provision :shell, :path => "scripts/install/mysql.sh"
    config.vm.provision :shell, :path => "scripts/install/php.sh"
    config.vm.provision :shell, :path => "scripts/install/other.sh"

    config.vm.synced_folder "./src", "/home/vagrant", :mount_options => ["dmode=777", "fmode=666"]

    settings["sites"].each do |site|
      config.vm.provision "shell" do |s|
          s.inline = "bash /vagrant/scripts/nginx-site.sh $1 $2"
          s.args = [site["map"], site["to"]]
      end
    end
end
