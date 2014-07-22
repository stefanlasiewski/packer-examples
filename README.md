Stefan's Packer Examples
========================

# EL6 example - RHEL/CentOS/Scientific Linux

This example installs a basic EL6 system and installs Puppet. Included are several files.
   - vmware-example.json - Packer template for VMware Fusion. This image:
     - Pulls in an ISO from the local disk
     - Boots the ISO
     - Appends `ks=...` to the Linux boot command to start the Kickstart process
     - Installs the user 'packer' for later provisioning.
   - ks.cfg - Kickstart template to install EL6
   - scripts/puppet.sh - Install the Puppet repository, install Puppet and dependencies, and run `puppet agent --test` once.

Instructions:

1. Install Packer
2. Download this git repo.
3. Download ISOs for EL6 and place them in the PWD. See `isopath` and `iso_url` for the exact location.
3. Build image using packer

```
export PATH=$PATH:/path/to/packer
packer build vmware-example.json
```

Notes:

  * JSON does not allow inline comments, so the file is uncommented.
  * I pause the build several times to illustrate what is happening. In particular, getting the Kickstart commandline correct was a bit tricky.


