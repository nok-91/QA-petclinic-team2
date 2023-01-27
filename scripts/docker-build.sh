#!/bin/bash
sudo docker login -u nokdev -p ${DockerHubPwd}
sudo docker-compose -f docker-compose.yaml build
sudo docker-compose -f docker-compose.yaml push