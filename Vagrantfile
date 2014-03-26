VAGRANTFILE_API_VERSION = '2'
HOST_NAME = 'wallemail'
BRIDGE_ETHER = 'eth0'
RAM_MEM = '512'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'precise32'
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.host_name = HOST_NAME
  config.vm.network :private_network, ip: '10.6.6.6'
  #config.vm.network "public_network"
  #config.vm.network "public_network", :bridge => BRIDGE_ETHER
  
  #config.vbguest.auto_update = false
  #config.vbguest.no_remote = true

  config.vm.provision "shell", path: "Vagrantshell/update.sh"
  config.vm.provision "shell", path: "Vagrantshell/essential.sh"
  config.vm.provision "shell", path: "Vagrantshell/mysql.sh"
  config.vm.provision "shell", path: "Vagrantshell/php.sh"
  #config.vm.provision "shell", path: "Vagrantshell/apache.sh"
  #config.vm.provision "shell", path: "Vagrantshell/nginx.sh"
  #config.vm.provision "shell", path: "Vagrantshell/openjdk.sh"
  config.vm.provision "shell", path: "Vagrantshell/ruby_rvm.sh"

  config.vm.network :forwarded_port, guest: 3000, host: 3000, auto_correct: true    # rails
  config.vm.network :forwarded_port, guest: 9292, host: 9292, auto_correct: true    # rack
  config.vm.network :forwarded_port, guest: 4567, host: 4567, auto_correct: true    # sinatra
  config.vm.network :forwarded_port, guest: 1080, host: 1080, auto_correct: true    # mailcatcher
  config.vm.network :forwarded_port, guest: 8888, host: 8888, auto_correct: true    # jasmine
  config.vm.network :forwarded_port, guest: 3306, host: 3306, auto_correct: true    # mysql
  config.vm.network :forwarded_port, guest: 1234, host: 1234, auto_correct: true    # node
  config.vm.network :forwarded_port, guest: 5432, host: 5432, auto_correct: true    # postgresql
  config.vm.network :forwarded_port, guest: 6379, host: 6379, auto_correct: true    # redis
  config.vm.network :forwarded_port, guest: 9200, host: 9200, auto_correct: true    # elasticsearch
  config.vm.network :forwarded_port, guest: 27017, host: 27017, auto_correct: true  # mongodb
  config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true      # apache/nginx

  config.vm.provider :virtualbox do |vb|
    vb.name = HOST_NAME
    vb.customize [ "modifyvm", :id, "--memory", RAM_MEM ]
    vb.customize [ "setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1" ]
    vb.customize [ "setextradata", :id, "VBoxInternal/Devices/ahci/0/LUN#[0]/Config/IgnoreFlush", "1" ]
  end

  #config.vm.synced_folder ".", "/Projects", id: "vagrant-root", :nfs => true
  #config.vm.synced_folder "~/projects", "/Repos", id: "vagrant-repos", :nfs => true

  #config.vm.provision "puppet" do |puppet|
   #puppet.manifests_path = "manifests"
   #puppet.manifest_file  = "site.pp"
  #end
end
