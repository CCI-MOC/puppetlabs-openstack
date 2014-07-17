node 'puppet' {
  include ::ntp
}

node 'control' {
  include ::openstack::role::controller
}

node 'storage' {
  include ::openstack::role::storage
}

node 'network' {
  include ::openstack::role::network
}

node 'compute' {
  include ::openstack::role::compute
}

node 'swiftstore1' {
  class { '::openstack::role::swiftstorage':
    zone => '1'
  }
}

node 'swiftstore2' {
  class { '::openstack::role::swiftstorage':
    zone => '2'
  }
}

node 'swiftstore3' {
  class { '::openstack::role::swiftstorage':
    zone => '3'
  }
}

node 'tempest' {
  include ::openstack::role::tempest
}

