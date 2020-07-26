# Jenkins Master

**Build great things at any scale**

[![Dockerhub](https://img.shields.io/badge/Dockerhub-blue.svg?style=for-the-badge&logo=appveyor)](https://hub.docker.com/r/adisakshya/jenkins-master) [![version](https://img.shields.io/badge/Version-1.0.0-blue.svg?style=for-the-badge&logo=appveyor)](https://github.com/adisakshya/jenkins-master) [![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-blue.svg?style=for-the-badge&logo=appveyor)](https://github.com/adisakshya/jenkins-master/pulls) [![Open Source](https://img.shields.io/badge/Open%20Source-Love-red.svg?style=for-the-badge&logo=appveyor)]()


Jenkins is a leading open source automation server, it provides hundreds of plugins to support building, deploying and automating any project.

As an organization matures from a continuous delivery standpoint, its building-deploying and automating requirements will similarly grow. 
Jenkins supports the "master/agent" mode, to support distributed build environment, where the workload of building projects are delegated to multiple agents.

This repository contains docker image of a Jenkins master, which can be used in a distributed build architecture.

In a distributed builds environment, the Jenkins master will use its resources to only handle HTTP requests and manage the build environment. Actual execution of builds will be delegated to the agents. With this configuration it is possible to horizontally scale an architecture, which allows a single Jenkins installation to host a large number of projects and build environments.

## Operating Instructions

### Prerequisites

- Make sure you have
  - Docker installed

### Fork

- Fork this repository
	- "Forking" adds a copy of [adisakshya/jenkins-master](https://github.com/adisakshya/jenkins-master/) repository to your GitHub account as `https://github.com/YourGitHubUserName/jenkins-master`
- Download or clone your forked repository
	- You can clone the repository executing below command in a location of your choice of your system.
	```$ git clone https://github.com/YourGitHubUserName/jenkins-master.git```

### Using Docker

- Make sure you have docker installed before proceeding.
    - From project-root-directory, run the following command
		- ```docker build -t my-jenkins-master .```
    - Or you can directly pull the docker image, using following command
    	- ```docker pull adisakshya/jenkins-master```
- As soon as the build completes you are all set to get started with jenkins-master.
- Now you can run the docker image using the following command
    - ```docker run -d --name jenkins-master my-jenkins-master```
- Using docker Jenkins master can be deployed on any cloud service (I have tested deployments on AWS and GCP) as is.

## Suggest Features

Is a feature you care about currently missing? Make sure to browse the [issue tracker](https://github.com/adisakshya/jenkins-master/issues?q=is%3Aissue+is%3Aopen+sort%3Areactions-%2B1-desc) and add your ":+1:" reaction to the issues you care most about, as I also use those reactions to prioritize issues.

## JustStarIt

🌟 Star this repo if jenkins-master helped you.

## License

All versions of the app are open-sourced, read more about this [LICENSE](https://github.com/adisakshya/jenkins-master/blob/master/LICENSE).