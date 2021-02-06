#The Makefile contains instructions on environment setup and lint tests


# Create and activate a python virtual environment and source it
setup:	
	python3 -m venv ~/.devops
	source ~/.devops/bin/activate

# Install dependencies in requirements.txt
# This should be run from inside a virtualenv
install:	
	pip3 install --upgrade pip &&\
		pip3 install --trusted-host pypi.python.org -r requirements.txt

# Install hadolint
install_hadolint:	
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	chmod +x /bin/hadolint

install_local_hadolint:
	# Install Local hadolint
	sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	sudo chmod +x /bin/hadolin

# Dockerfile should pass hadolint
# app.py should pass pylint
lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py

run_docker:
	./utils/run_docker.sh

upload_docker:
	./utils/upload_docker.sh

run_kubernetes:
	./utils/run_kubernetes.sh

#all: install lint test
