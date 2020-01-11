ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.ssh.forward_agent = true
  config.vm.network :forwarded_port, guest: 5000, host: 8000
  config.vm.provision :shell, :path => "deploy/bootstrap.sh", env: {"GITHUB_API_TOKEN" => "<YOUR_API_TOKEN>"}
end
