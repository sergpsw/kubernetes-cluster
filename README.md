1. Download and install VirtualBox. Download and install Vagrant.
 - https://www.virtualbox.org/wiki/Linux_Downloads
 - https://www.vagrantup.com/intro/getting-started

2. Clone the repository "change link" to your machine in any folder. Open a terminal in this folder.

4. Run the command 'vagrant up'. 

5. Wait the virtual machines starts up. Upon completion of all the above steps, the Kubernetes cluster should be up and running:
 - 'vagrant ssh masterk8s' - can login to the master nodes
 - 'vagrant ssh workerk8s1' - can login to the worker nodes
 - http://192.168.88.101:31111/ - open in the browser webserver Nginx.

