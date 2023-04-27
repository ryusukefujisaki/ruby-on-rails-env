CONFIG_VERSION = "2"

%w[vagrant-hostmanager vagrant-hostsupdater vagrant-vbguest].each do |plugin_name|
  unless Vagrant.has_plugin? plugin_name
    raise "Vagrant plugin #{plugin_name} is required. Please install it in this way. `vagrant plugin install #{plugin_name}`"
  end
end

Vagrant.configure(CONFIG_VERSION) do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.hostname = "ruby-on-rails.local"
  config.vm.network :private_network, ip: "192.168.99.103"
  config.vm.synced_folder ".", "/home/vagrant/ruby-on-rails-env"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "ruby-on-rails"
    vb.gui = false
    vb.cpus = 2
    vb.memory = "4096"
  end

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.vbguest.auto_update = false
  config.vbguest.no_remote = true

  config.vm.provision "shell", :path => "provision.sh", :privileged => false
end
