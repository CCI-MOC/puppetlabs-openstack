#!/bin/bash
# This is the script for bringing up the standard openstack nodes without
# Swift. This is probably the up script you want to run.
vagrant up --provider libvirt puppet control storage network compute
vagrant host-manager
