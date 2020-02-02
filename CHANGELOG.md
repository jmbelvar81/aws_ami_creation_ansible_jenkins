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

## [0.0.0] - 2020-01-31

    - Added all parameters required to uncoupled from the product used in the original code in:
      - build_aws_ami playbook role parameters from *'extra vars'*
      - create and finalize role parameters

## [0.0.0] - 2020-01-01

    - Remove old code and begin a new more generic implementation focus only in the AMI Creation

## [0.0.0] - 2019-05-22

### Added

  - First version of the code 
  - Several Roles as Preference over use several *yml* task file/s in an unique Role for **re-usability**
  - First Documentation on Main *README.md*
  - Examples of Playbook Execution 
  - Vagranfile to facilitate *Local Tests* using VM deployed *"via Vagrant"*
  - Include the references to content required in each "file" directory
