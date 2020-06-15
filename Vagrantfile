Vagrant.configure("2") do |config|
  config.vm.provision "shell", path: "./script.sh"
  config.env.enable
  config.vm.provider "virtualbox" do |vb|
      vb.cpus = 2
      vb.memory = "2048"
  end

  config.vm.define "masterk8s" do |masterk8s|
    masterk8s.vm.box = "ubuntu/bionic64"
    masterk8s.vm.hostname = "masternode"
    masterk8s.vm.network "private_network", ip: "192.168.88.100"
    masterk8s.vm.synced_folder "./", "/var/www/vagrant"
    masterk8s.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "playbook-k8s.yml"
      ansible.extra_vars = {
        node_ip: "192.168.88.100",
      }
    end
  end

  (1..ENV['W_COUNT'].to_i).each do |i|
    config.vm.define "workerk8s#{i}" do |workerk8s|
      workerk8s.vm.box = "ubuntu/bionic64"
      workerk8s.vm.hostname = "workernode#{i}"
      workerk8s.vm.network "private_network", ip: "192.168.88.10#{i}"
      workerk8s.vm.synced_folder "./", "/var/www/vagrant"
      workerk8s.vm.provision "ansible_local" do |ansible|
        ansible.playbook = "playbook-k8s.yml"
        ansible.extra_vars = {
          node_ip: "192.168.88.10#{i}",
        }
      end
    end
  end

end
