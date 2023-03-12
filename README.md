# DVWA XSS testing on Docker and Jenskins

This project contains the following components:
- Docker
- DVWA
- Nuclei
- Jenkins

This project provides a Dockerfile for creating a Jenkins Docker image with Nuclei installed and the `nuclei_temps` folder copied to the `/opt` directory. The Docker image also requires a DVWA Docker container to be running on port 80.

## Getting Started

To get started, you'll need to have Docker installed on your machine. You can download Docker from the official website: https://www.docker.com/get-started

## Usage

1. Clone this repository to your local machine.
2. Ensure that you have Docker and Docker Compose installed.
3. Run `docker build -t custom-jenkins .` to start building the Jenkins image.

This will build the Docker image with Nuclei, OWASP ZAP installed,the nuclei_temps folder copied and tag it with the name `custom-jenkins`.

Now you can use `docker-compose up -d`

This will start the custom Jenkins Docker container with the name `custom-jenkins` and expose port 8080 on your machine and DVWA site on port 80


## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
