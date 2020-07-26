Ansible is a configuration management tool.

Steps to install Ansible on Centos-7 machine:

1.First we need to ensure that the CentOS 7 EPEL repository is installed:

sudo yum install epel-release

2.Once the repository is installed, install Ansible with yum:

sudo yum install ansible

Configuring Ansible Hosts:

Ansible keeps track of all of the servers that it knows about through a “hosts” file. We need to set up this file first before we can begin to communicate with our other computers.

Open the file using below command:

sudo vi /etc/ansible/hosts

enter the host details (IP address and user) on which you want to run perform configuration using Ansible from your CentOS machine and save it.

You can use your aws private key to enable login from your local centos Machine to AWS EC2 and same key can be used by ansible to perform installation/configuration to remote AWS EC2 machine.

NOTE: Some Ansible module require python boto and boto3 library to perform respective tasks so use below steps to install these

a) First install Pip with the command:
   
   sudo yum install python-pip

b) Install boto3 using
  
  pip install boto3 --user

c) Install boto also
   
   pip install boto --user

d) Setup Amazon credentials in boto file
   
   Open boto config file
   
   vi /etc/boto.cfg
   
   Add below line to the file.
   
   [Credentials]
   
   aws_access_key_id = Your aws_access_key_id
   
   aws_secret_access_key = Your aws_secret_access_key

   Ansible command to run Playbook:

   ansible-playbook -i path to host file path to playbook file -- private-key=yor aws private key to access aws resource
   
   EX- ansible-playbook -i hosts playbook.yaml --private-key=aws_terraform

NOTE: We can't download Oracle JDK directly from Oracle website, we have to first accept their licensed terms and cookies before downloading so there is no option to directly install Oracle JDK using Ansible playbook. One work around is to download tar or rpm files manually from Oracle site and then push it to the servers where we want to install Oracle and then can install it  by mentioning it Ansible playbook file.
