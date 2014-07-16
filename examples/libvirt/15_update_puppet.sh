#!/bin/bash
#upgrade to puppet 3.6.1 from box's 3.1.1
vagrant ssh control -c "sudo rpm -i http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm; \
			sudo yum install -y puppet; "
vagrant ssh storage -c "sudo rpm -i http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm; \
			sudo yum install -y puppet; "
vagrant ssh network -c "sudo rpm -i http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm; \
			sudo yum install -y puppet; "
vagrant ssh compute -c "sudo rpm -i http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm; \
			sudo yum install -y puppet; "
