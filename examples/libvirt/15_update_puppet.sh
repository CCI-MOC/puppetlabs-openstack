#!/bin/bash
#remove puppet gem 3.1.1, install distro version 3.6.1
# -x flag removes puppet executable from gem without request
vagrant ssh control -c "sudo rpm -i http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm; \
			sudo gem uninstall puppet -x; \
			sudo yum install -y puppet -x; "
vagrant ssh storage -c "sudo rpm -i http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm; \
			sudo gem uninstall puppet -x; \
			sudo yum install -y puppet; "
vagrant ssh network -c "sudo rpm -i http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm; \
			sudo gem uninstall puppet -x; \
			sudo yum install -y puppet; "
vagrant ssh compute -c "sudo rpm -i http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm; \
			sudo gem uninstall puppet -x; \
			sudo yum install -y puppet; "
