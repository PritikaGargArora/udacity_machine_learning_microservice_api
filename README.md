[![CircleCI](https://circleci.com/gh/PritikaGargArora/udacity_machine_learning_microservice_api.svg?style=svg)](https://app.circleci.com/pipelines/github/PritikaGargArora/udacity_machine_learning_microservice_api)


# Project: Operationalize a Machine Learning Microservice API.
 project goal is to operationalize pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on

 Project goal is to operationalize this working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications

###  Dependencies
#### 1. Python
[Download and install the python](https://www.python.org/downloads/). 

#### 2. Docker Desktop
Install Docker Desktop to create containers for individual microservices. Refer the following links for instructions 
* [macOS](https://docs.docker.com/docker-for-mac/install/), 
* [Windows 10 64-bit: Pro, Enterprise, or Education](https://docs.docker.com/docker-for-windows/install/), 
* [Windows  10 64-bit Home](https://docs.docker.com/toolbox/toolbox_install_windows/). 
* Find installation instructions for other operating systems at:  https://docs.docker.com/install/

#### 3. Kubernetes 
Need to install any one tool for creating a Kubernetes cluster - KubeOne / Minikube / kubectl on top of Docker Desktop:
1. [Install and Set Up kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) directly on top of Docker desktop - For Windows/macOS
2. [Install Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) - For Linux/macOS

#### 4. AWS account to access AWS Lambda
Need an [AWS account](https://aws.amazon.com/free/?all-free-tier.&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc) to get started with [AWS Lambda](https://aws.amazon.com/lambda/), which is a serverless computing platform on cloud.  

#### 5. An account with Circle CI
Sign up on [CircleCI.com](https://circleci.com/signup/) with GitHub credentials. 
---


### Project Details/Files
*  `app.py` application script
* `model_data` folder with the trained model and data for prediction
* `requirements.txt` dependencies of app
* `.circleci/config.yml` folder includes the configuration to CircleCI
* `output_txt_files`  folder includes docker and kubernetes outputs files
* `Screenshots`  folder includes some additional captures
* `Dockerfile` file to deploy an image for the app to be runned on a container
* `Makefile`  includes commands to make setup, install, test, lint, run_docker, run_kubernetes, upload_docker, all
* `run_docker.sh` script to build and start container 
* `run_kubernetes.sh` script to run on Kubernetes
* `upload_docker.sh` script to upload to dockerhub container
* `make_prediction.sh` script to test application

## Environment Configuration
* Run `make setup` to create a virtual env and activate it

* Run `make install` to install the necessary dependencies

* Run `install_hadolint` to install the hadolint

* Run `make lint` to perform code lynting

## Run the app:

* Run through Docker:  `./utils/run_docker.sh` to Build an docker image,list images to verify that this app is dockerized

* Now can access the app on localhost port 8000. [http://localhost:8000](http://localhost:8000)

* Test the app using command: ./utils/make_prediction.sh

* Run through Kubernetes:  `./utils/run_kubernetes.sh` to run a container in Kubernetes cluster (make sure to have one ready the best option to locally is use `minikube`)
* Access the app on localhost port 8000. [http://localhost:8000](http://localhost:8000)
