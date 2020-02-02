Role *"BUILD_IBI_AWSAMI"*
=========

Role that include the required mechanism to create a test instance and build the AMI from it .

Requirements
------------

Execution policy that allows EC2 Operations

Role Variables
--------------

Non Required. Some of them are dynamically configured by the role's tasks

Dependencies
------------

Non Dependencies outside from standard Ansible Core/AWS Modules


Example Inventory
-----------------

You could create a test_inventory.yml as this one: - The Keypair is necessary in the path that you estimate

```yml
[mylocalhost]
localhost ansible_host=127.0.0.1

[aws_ec2_hosts]

[aws_ec2_hosts:vars]
ansible_port=22
ansible_user=ec2-user
ansible_private_key_file="key-pair-biaas.pem"

```

Example Playbook
----------------

You can execute using:

```bash
# Considerations:
#  - Use "--check" previously.... ALWAYS!!!
#
ansible-playbook -i test_inventory.yml test_build_ami.yml  -vvvv
```

The *test_build_ami.yml* will be as follow: - Consider that "hosts" field could change

```yml
---
- hosts: mylocalhost
  connection: local

  roles:
    - { role: build_ibi_awsami, build_ibi_awsami_action: create }
  tags: 'create'

- hosts: aws_ec2_hosts                                           
                                                                 
  tasks:              
    - debug:          
        msg: 'Please, Include Here the Required Tasks to Execute on Created Instance'

- hosts: mylocalhost
  connection: local

  roles:
    - { role: build_ibi_awsami, build_ibi_awsami_action: finalize }
  tags: 'finalize'
```


License
-------

BSD

Author Information
------------------

Name          : José M Beltrán Vargas
Contacat Mail : josemaria.beltran.contractor@bbva.com
