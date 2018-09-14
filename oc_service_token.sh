#!/bin/bash

# On Master

oc create serviceaccount robot
oc policy add-role-to-user admin system:serviceaccounts:test:robot
oc serviceaccounts get-token robot

oc adm policy add-cluster-role-to-user cluster-admin root
