#!/bin/bash

# On Master

oc create serviceaccount mkde
oc policy add-role-to-user admin system:serviceaccounts:mkde:mkde
oc serviceaccounts get-token mkde

oc adm policy add-cluster-role-to-user cluster-admin root
