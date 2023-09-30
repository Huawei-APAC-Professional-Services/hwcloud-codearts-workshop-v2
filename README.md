# Building your first CI/CD pipeline on Huawei CodeArts Service

### Introduction

**Continuous Integration and Continuous Deployment (CI/CD)** is a software development approach that aims to streamline and automate the process of building, testing, and deploying software applications. It's a crucial part of modern software development practices that helps teams deliver high-quality code more rapidly and reliably. CI/CD promotes collaboration among developers, reduces manual errors, and accelerates the time it takes to turn code changes into production-ready applications.

[Huawei CodeArts](https://support.huaweicloud.com/intl/en-us/devcloud/index.html) is a one-stop DevSecOps platform that provides out-of-the-box cloud services for requirement delivery, code commit, check, build, verification, deployment, and release throughout the entire software lifecycle to achieve continuous integration and continuous deployment.

In this comprehensive guide, we will explore the world of CodeArts service on Huawei Cloud, leverage the features provided in the CodeArts service to build different Continuous Integration and Continuous Deployment pipeline to demonstrate different scenarios as below:
* **Automated Continuous Integration pipeline triggered via code commit**
* **Blue-green deployment strategy for the production environment**
* **Version control rollback with the use of image tagging for the production environment**

Throughout this lab manual, we will take you on a journey of configuring the basic elements that are required to build up a complete pipeline in order to achieve the continuous integration and continuous deployment of the web application to different environments. We will guide you step-by-step in configuring the build task, and deployment task and finally combine all the tasks together to make up a CI or CD pipeline. By the end of this lab, you will have a strong foundation in CI/CD pipeline configured using Huawei CodeArts services and you’ll be able to apply these skills to empower and streamline your application development and deployment lifecycle.

### Learning Outcomes

By the end of the lab, we are able to achieve as below:
* **Configure the CI pipeline using the CodeArts services such as Repo, Check, Build, Deploy, pipeline and etc.**
* **Configure the CD pipeline using the CodeArts services such as Repo, Build, Deploy, pipeline and etc.**
* **Configure the CD pipeline to achieve a blue-green deployment strategy in the production environment**

### Target Audience

This lab has been designed specifically for the engineers and operators who work under Huawei Cloud CodeArts service. Anyone interested in Huawei CodeArts service is welcome.

### Duration

On average, completing all the exercises in this lab will take around 2 hours and 15 minutes.

### Pre-requisites

Before going through the exercise in this lab, you should have some familiarity on below:
* **Basic understanding of Huawei Cloud resources such as Cloud Container Engine (CCE) and Huawei CodeArts Service**
* **Basic understanding of the Continuous Integration (CI) and Continuous Deployment (CD) concept**
* **Basic understanding of the Kubernetes YAML scripts**

Before going through the exercise in this lab, you should have the below tools and resources:

* [Huawei Cloud Account](https://auth.huaweicloud.com/authui/login.html?service=https://console-intl.huaweicloud.com/console/#/login) with FullAccess permission <br> (**Notes:** The Huawei Cloud account will be provided to you if you attend the workshop physically that organized by Huawei Cloud Professional Service Team)
* [Visual Studio Code Editor (Optional)](https://code.visualstudio.com/download)
* [Git](https://git-scm.com/downloads)
* [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
* [kubectl](https://kubernetes.io/docs/tasks/tools/)

### Huawei CodeArts Service Workshop

Please follow the sequence below if you wish to perform the hands-on learning with CodeArts Service on Huawei Cloud. Expand the flowchart and click on every single element to perform the labs.

```mermaid
flowchart LR
    00_Fundamental_Knowledge[<a href='https://github.com/Huawei-APAC-Professional-Services/hwcloud-codearts-workshop-v2/blob/main/workshop/00_Fundamental_Knowledge.md'>00_Fundamental_Knowledge</a>]

    00_Fundamental_Knowledge --> 01_Solution_Overview[<a href='https://github.com/Huawei-APAC-Professional-Services/hwcloud-codearts-workshop-v2/blob/main/workshop/01_Solution_Overview.md'>01_Solution_Overview</a>]

    01_Solution_Overview --> 02_Getting_Started[<a href='https://github.com/Huawei-APAC-Professional-Services/hwcloud-codearts-workshop-v2/blob/main/workshop/02_Getting_Started.md'>02_Getting_Started</a>]

    02_Getting_Started --> 03_Build_Task[<a href='https://github.com/Huawei-APAC-Professional-Services/hwcloud-codearts-workshop-v2/blob/main/workshop/03_Configure_Build_Task.md'>03_Build_Task</a>]

    03_Build_Task --> 04_CI_Pipeline[<a href='https://github.com/Huawei-APAC-Professional-Services/hwcloud-codearts-workshop-v2/blob/main/workshop/04_Configure_CI_Pipeline.md'>04_CI_Pipeline</a>]

    04_CI_Pipeline --> 05_CD_Pipeline[<a href='https://github.com/Huawei-APAC-Professional-Services/hwcloud-codearts-workshop-v2/blob/main/workshop/05_Configure_CD_Pipeline.md'>05_CD_Pipeline</a>]

    05_CD_Pipeline --> 06_Blue_Green_Deployment[<a href='https://github.com/Huawei-APAC-Professional-Services/hwcloud-codearts-workshop-v2/blob/main/workshop/06_Blue_Green_Deployment.md'>06_Blue_Green_Deployment</a>]

    06_Blue_Green_Deployment --> 07_CodeArts_Challenge[<a href='https://github.com/Huawei-APAC-Professional-Services/hwcloud-codearts-workshop-v2/blob/main/workshop/07_Version_Control_Rollback.md'>07_CodeArts_Challenge</a>]
```