Role *"TEST_ROLE"*
=========

Role that you can use to test your main playbook invokes to roles previously to include the real ones. 

Useful to validate the main playbook where it's used.

Requirements
------------

Pass the extra variables during playbook invoke/s.

Role Variables
--------------

Non Required. It use *"extra vars"* given as parameters

Dependencies
------------

Non Dependencies outside from standard Ansible Core/AWS Modules


Example Inventory
-----------------

You could create a test_inventory.yml as this one: - The Keypair is necessary in the path that you estimate

```yml
[mylocalhost]
localhost ansible_host=127.0.0.1

[<your host group name>]

[<your host group>:vars]
ansible_port=22
ansible_user=ec2-user
ansible_private_key_file="key-pair-<your project>.pem"

```

Example Playbook
----------------

You can execute using:

```bash
# Considerations:
#  - Use "--check" previously.... ALWAYS!!!
#
ansible-playbook -i test_inventory.yml test.yml  -vvvv
```

The *test.yml* will be as follow: - Consider that "hosts" field could change

```yml
---
- hosts: <your desired hosts tag>
  tasks:
    - include_role:
        name: test_role
```


License
-------

BSD

Author Information
------------------

  - Complete Name   : José M Beltrán Vargas
  - Contact at Mail : jmbelvar81@outlook.com
