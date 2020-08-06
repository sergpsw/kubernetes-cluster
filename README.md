Use the following instruction to deploy Kubernetes cluster.

1. Download and install VirtualBox. Download and install Vagrant.
 - https://www.virtualbox.org/wiki/Linux_Downloads
 - https://www.vagrantup.com/intro/getting-started

2. Clone the repository "https://github.com/sergpsw/kubernetes-cluster" to your machine in any folder. Open a terminal in this folder. 

3. Run the command `vagrant plugin install vagrant-env`.

4. Create own `.env` file based on `.env.example`. Without that file scenario is not valid.

5. Can change number Worker Nodes in `.env`.

6. Run the command `vagrant up`. 

7. Wait the virtual machines starts up. Upon completion of all the above steps, the Kubernetes cluster should be up and running:
 - `vagrant ssh masterk8s` - can login to the master nodes
 - `vagrant ssh workerk8s1` - can login to the worker nodes
8. Add in '/etc/hosts' line "192.168.88.100 test.loc".
 - http://test.loc:32080 - open in the browser webserver Apache.
 - https://test.loc:32443 - open in the browser webserver Apache.
