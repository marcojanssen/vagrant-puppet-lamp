Vagrant.configure("2") do |config|
  config.vm.box = "centos-64-64-puppet"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box"

  # Use :gui for showing a display for easy debugging of vagrant
  #config.vm.boot_mode = :gui

  config.vm.network :private_network, ip: "192.168.2.200"
    config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, '--chipset', 'ich9'] # solves kernel panic issue on some host machines
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", 1024] #1024mb memory
    v.customize ["modifyvm", :id, "--ioapic", "on"]
    v.gui = true
  end


  #config.vm.synced_folder "./", "/var/www", id: "vagrant-root"
  #config.vm.provision :puppet do |puppet|
  #  puppet.manifests_path = "manifests"
  #  puppet.module_path = "modules"
  #  puppet.options = ['--verbose']
  #end
end

