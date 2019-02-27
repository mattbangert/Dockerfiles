# Sonarqube

[Docker](https://www.docker.com/) container with [SonarQube](http://www.sonarqube.org/) and useful plugins for our general use cases.

## Requirements
* docker
* docker-compose
* git

## Usage
* From the **Sonarqube** directory, `docker-compose up -d`
** Note, your first execution will take a bit while the image is built locally and the plugins are downloaded.
* Once complete, you can view the UI at `http://localhost:9000`