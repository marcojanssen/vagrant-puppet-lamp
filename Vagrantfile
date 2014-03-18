Vagrant.configure("2") do |config|

  config.vm.box = "fadenb/debian-wheezy-puppet3"
  config.vm.box_url = "https://vagrantcloud.com/fadenb/debian-wheezy-puppet3/version/1/provider/virtualbox.box"

  config.vm.network :private_network, ip: "192.168.2.200"

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, '--chipset', 'ich9'] # solves kernel panic issue on some host machines
    v.customize ["modifyvm", :id, "--name", "localdev"]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", 1024] #1024mb memory
    v.customize ["modifyvm", :id, "--ioapic", "on"]
    v.gui = true
  end

  config.vm.provision :shell, :path => "shell/puppet.sh"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
    puppet.options = "--verbose"
  end
end

