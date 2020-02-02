# AWS AMI CREATOR
---

## Summary of the project

This repository contains a software project to allow the creation of your AWS AMIs using declarative method.

The involved technologies are:

	- Ansible: As configuration management tool that allow install the required sofware in a declarative way 
	- Jenkins: As component that allow receive the requests from client and *"orchestrate"* the execution 
	- Docker : As component to allow *isolate* all required dependencies and the execution code that Jenkins will invoke

## How to Execute

Currently is recommended pass the required extra vars as a json:

```bash
# Use --check to test previously to execution:
#
ansible-playbook -i <your inventory path/file> <your_playbook> -e '{"key_a": <value_a>, .... , "key_z": <value_z>}'
```

As alternative you could use a file using *"@ your json file name"* format
