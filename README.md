# AWS AMI CREATOR
---

## Summary of the project

This repository contains a software project to allow the creation of your AWS AMIs using declarative method.

The involved technologies are:

	- Ansible: As configuration management tool that allow install the required sofware in a declarative way 
	- Jenkins: As component that allow receive the requests from client and *"orchestrate"* the execution 
	- Docker : As component to allow *isolate* all required dependencies and the execution code that Jenkins will invoke


