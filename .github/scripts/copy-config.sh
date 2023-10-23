#!/bin/bash

ssh $SSH_OPTIONS $SSH_PRIVATE_KEY $EC2_INSTANCE "sudo cp .github/configurations/local.ini /etc/couchdb/local.ini"
