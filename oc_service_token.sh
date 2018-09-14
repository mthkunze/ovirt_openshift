#!/bin/bash

# On Master

oc create serviceaccount robot
oc policy add-role-to-user admin system:serviceaccounts:test:robot
oc serviceaccounts get-token robot
