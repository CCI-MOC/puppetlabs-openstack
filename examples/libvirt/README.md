A few notes on using Vagrant and libvirt to test openstack:

Five networks need to be setup in libvirt. The default net for
Vagrant, and the four OpenStack networks.

*  eth0: Share with my Mac
*  eth1: 192.168.11.0/24 (netmask 255.255.255.0)
*  eth2: 192.168.22.0/24 (netmask 255.255.255.0)
*  eth3: 172.16.33.0/24 (netmask 255.255.255.0)
*  eth4: 172.16.44.0/24 (netmask 255.255.255.0)


Using R10K, module dependencies are automatically downloaded and the root of the module
directory is attached to the virtual machines. This can help with module development.
Any changes you make to the module will appear on the Puppet master. Additionally,
using the Python script in the ../../tools directory you can apply pending patches
from Stackforge to the dependencies, giving you an opportunity to test out changes
before they're merged. To try it out use the command:

```
python ../../tools/review_checkout.py -u <gerrit_username> -c <review_id>
```

The <review_id> refers to the URL for OpenStack Gerrit. So, if your review was located at 
https://review.openstack.org/#/c/81989/ the `<review_id>` would be 81989.

Running the script will produce output that is itself a script. You can apply the patch by
piping it to a shell.

```
python ../../tools/review_checkout.py -u <gerrit_username> -c <review_id> | sh
```

You can log into your console through the API network and the
[Horizon interface](http://192.168.11.4).
The user credentials are in /root/openrc on control
