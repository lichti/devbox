devbox
======

Devbox is a template of a Vagrantfile and a collection of scripts to configure a new enviroment to develop using Vagrant.

The Vagrant
-----------
- **What is Vagrant**

Vagrant is a tool for building complete development environments. With an easy-to-use workflow and focus on automation, Vagrant lowers development environment setup time, increases development/production parity, and makes the "works on my machine" excuse a relic of the past.

- **Why Vagrant**

Vagrant provides easy to configure, reproducible, and portable work environments built on top of industry-standard technology and controlled by a single consistent workflow to help maximize the productivity and flexibility of you and your team.

To achieve its magic, Vagrant stands on the shoulders of giants. Machines are provisioned on top of VirtualBox, VMware, AWS, or any other provider. Then, industry-standard provisioning tools such as shell scripts, Chef, or Puppet, can be used to automatically install and configure software on the machine.stalar e configurar o software na máquina automaticamente.

- **[Vagrant site](http://www.vagrantup.com)**
- **[Vagrant download](http://www.vagrantup.com/downloads.html)**

Using devbox
---------------
Clone the devbox

`git clone https://github.com/lichti/devbox.git`

Access the directory of the devbox

`cd devbox`

Edit the Vagrantfile to enable or disable vagrantshells for your development enviroment

`nano Vagrantfile`

Initialize the development enviroment. (This step may be slow)
`vagrant up`

Accessing the development enviroment with ssh

`vagrant ssh`

For windows losers  users
-------------------------

Read more here: [ http://simplesideias.com.br/usando-o-vagrant-como-ambiente-de-desenvolvimento-no-windows](http://simplesideias.com.br/usando-o-vagrant-como-ambiente-de-desenvolvimento-no-windows)
