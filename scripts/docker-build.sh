#!/bin/bash
sudo -S docker login -u nokdev -p ${dockerpass}
sudo docker-compose -f docker-compose.yaml build
sudo docker-compose -f docker-compose.yaml push