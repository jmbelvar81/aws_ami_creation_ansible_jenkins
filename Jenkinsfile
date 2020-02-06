#!groovy​

import java.text.SimpleDateFormat

node {

    // Global VARs

    //Control Build
    def build_ok = true

    //Getting Date
    //Notes:
    //  - Original format for Date was originated from [I extended it]: $(date +%Y-%m-%d)
    //
    def dateFormat = new SimpleDateFormat("yyyy-MM-dd-HHmm")
    def currentDate = new Date()
    def currentFormatedDate = dateFormat.format(currentDate)

        // -- PARAMs SECTION --
    parameters {


    }

    
    // -- STAGES SECTION --

    //Configuration Requirements

    stage('CheckOut Jenkins Repository to Create Requirements'){

        checkout(
            [$class: 'GitSCM', 
            branches: [[name: '<your branch>']], 
            doGenerateSubmoduleConfigurations: false, 
            extensions: [], 
            submoduleCfg: [], 
            userRemoteConfigs: [[credentialsId: '<your credentials id>', url: '<your git url : https or git@git... format>']]
            ]
        )


    }

    //Create CM Container from Clean
    stage('Creating Required Container'){

        sh """#!/bin/bash
            sudo docker rmi amitool:latest
            cd jenkins_cm/docker_amitool/
            sudo docker build --rm -t amitool:latest .
        """

    }

    //Execute the tool
    stage('Configure SSH Client with Required Options'){

        sh """#!/bin/bash
            sudo docker run --rm -it amitool:latest -i inventories/create_ec2instanceforamibuild.yml build_aws_ami_workflow.yaml -e '{<pending of include the param to get the JSON File with Vars>}'

        """

    }

    //Clean Checkout Jenkins IaC
    stage('Cleaning Workspace - Jenkins IaC'){

        cleanWs()

    } // cleanWs Stage

    
    // Checking if some stage had error:
    if (build_ok) {
        currentBuild.result = "SUCCESS"
    } else {
        currentBuild.result = "FAILURE"
    }

}