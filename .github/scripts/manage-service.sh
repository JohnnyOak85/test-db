#!/bin/bash

is_enabled=$(ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo systemctl is-enabled couchdb' || true)
if [ "$is_enabled" != "enabled" ]; then
    ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo systemctl enable couchdb'
    ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo systemctl start couchdb'
else
    ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo systemctl restart couchdb'
fi
