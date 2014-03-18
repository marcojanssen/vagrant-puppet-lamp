Vagrant.configure("2") do |config|

  config.vm.box = "ffuenf-debian-7.4.0-amd64"
  config.vm.box_url = "https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/debian-7.4.0-amd64_virtualbox.box"

  config.vm.network :private_network, ip: "192.168.2.200"

  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'" # avoids 'stdin: is not a tty' error.

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

