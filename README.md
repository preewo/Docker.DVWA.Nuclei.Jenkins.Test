# Docker - DVWA - Nuclei - Jenkins Test

Firstly using docker-compose.yaml # docker-compose up -d
It will start DVWA on port 80 and Jenkins on 8080

ready to use Nuclei template in the nuclei_temp folder

Usage : nuclei -u http://localhost -w workflow-test.yaml

This workflow will test the login and the stored XSS on DVWA

Continuing the project to pipe it into Jenkins
