VAGRANTFILE_API_VERSION ||= "2"

box = "ubuntu/trusty64"
name = "vagrant-swift"
ipaddr = "192.168.0.50"
script = "provisioning/provision.sh"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box_check_update = false

	config.vm.define name, primary: true do |app|
		app.vm.box = box
		app.vm.network :private_network, ip: ipaddr
		app.vm.provider :virtualbox do |vb|
			vb.name = name
		end
		app.vm.provision :shell, path: script
	end
end
