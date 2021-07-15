Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.50.100"
  config.vm.provision "ansible", playbook: "ubuntu.yml"
  config.vm.hostname = "bionic"
  config.vm.provider "virtualbox" do |vb|
  vb.memory = "2048"
  end
  end