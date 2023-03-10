# DVWA and Nuclei with Jenkins
This project contains the following components:

Docker
DVWA
Nuclei
Jenkins
Installation
Clone this repository to your local machine.
Ensure that you have Docker and Docker Compose installed.
Run docker-compose up -d to start DVWA on port 80 and Jenkins on port 8080.
Usage
Nuclei
The Nuclei template is located in the nuclei_temp folder.
To use it, run nuclei -u http://localhost -w workflow-test.yaml.
This workflow will test the login and stored XSS on DVWA.
Jenkins
The project can be piped into Jenkins for continuous integration and testing.
Set up a Jenkins pipeline with the appropriate stages to build and test the project.
Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
