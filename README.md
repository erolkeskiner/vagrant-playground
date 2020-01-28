# Basic Dev Environment for Flask App using Vagrant

This project is intended to create a development environment for Web Apps using Python Flask framework.

## Prerequisites
[Vagrant](https://www.vagrantup.com/downloads.html)

[Virtual Box](https://www.virtualbox.org/wiki/Downloads)

## Usage


Executing command below in the root directory of the project will create and configure a guest virtual machine according to Vagrantfile:
```
vagrant up
```

When the guest virtual machine up and running, [the provision script](https://github.com/erolkeskiner/vagrant-playground/blob/master/deploy/bootstrap.sh) will install necessary dependencies for Flask, then will run the Flask app located in the `app` directory.

Once the Flask up is up and running, changes made in the application can be reflected with the command: 
```
vagrant reload default --provision
``` 

`default` is default guest virtual machine name. The command above must be modified if another host name is set in `Vagrantfile`.
