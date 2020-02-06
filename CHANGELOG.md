# Changelog
---

## Purpose of this file

All notable changes to this project will be documented in this file.

## Type of Changes

  - **Added:** for new features.
  - **Changed:** for changes in existing functionality.
  - **Deprecated:** for soon-to-be removed features.
  - **Removed:** for now removed features.
  - **Fixed:** for any bug fixes.
  - **Security:** in case of vulnerabilities.
  - **Tested:** in case check the code in different OS/Environments/etc...

## [Unreleased]
  
  - The first version of this project is under current development

## [0.0.1] - 2020-02-06

### Added

  - Public Ip as method to connect Temporal EC2 used by AMI
  - Python3 in Finalize Task and required modifications
  - Custom Credentials parameters for build workflow
  - Methods to avoid Fingerprint confirmation in manual way
  - Bundle of new requirements for used modules
  - Entrypoint as replacement of CMD used during testing phase
  - Examples of Execution and management in Documentation
  - Jenkinsfile "Template" - Only Pending of include params and the references in the corresponding *stages*

### Fixed

  - Python 3 issues in Dockerfile
  - Wrong Python2 in modules requiring Python3
  - Parameters references
  - Internal Role Vars in Finalize
  - Entrypoint for Docker Container

### Tested

  - Creation of Temporal EC2 Instance Tasks
  - Validation of Temporal Files with instance references on it
  - Execution when existing AMI is found
  - Execution without Python3 
  - Test Role actions on Temporal EC2 Machine
  - Execution using the new Entrypoint
  - Execution of individual tasks "one by one" from common inventory
  - Validation of Dynamic Host without include in physical inventory

## [0.0.0] - 2020-01-31

### Added 

    - Global Parameters required to uncoupled from the product used in the original code and it's the base of this one. We added:
      - Build_aws_ami playbook role parameters from *'extra vars'*
      - Create and finalize role parameters

### Fixed

    - Old commentaries from the base project this one is based   

## [0.0.0] - 2020-01-01

### Removed

    - Remove old code from the original project what originates the current one

## [0.0.0] - 2019-05-22

### Added

  - First version of the code 
  - Several Roles as Preference over use several *yml* task file/s in an unique Role for **re-usability**
  - First Documentation on Main *README.md*
  - Examples of Playbook Execution 
  - Vagranfile to facilitate *Local Tests* using VM deployed *"via Vagrant"*
  - Include the references to content required in each "file" directory
