#!/bin/sh

rpm -i http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
yum install puppet facter -y --quiet
# Execute puppet, but Puppet is optional at this stage,
# so don't report error to Packer
puppet agent --test || true
