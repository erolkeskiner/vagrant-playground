ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.ssh.forward_agent = true
  config.vm.network :forwarded_port, guest: 5000, host: 8000
  config.vm.provision "file", source: "./requirements.txt", destination: "$HOME/requirements.txt"
  config.vm.provision "file", source: "./app/", destination: "$HOME/"
  config.vm.provision :shell, :path => "deploy/bootstrap.sh"
end
