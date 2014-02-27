require 'spec_helper'


describe 'havana::role::ha::controller' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  let(:facts) do {
    :osfamily => 'Debian',
    :lsbdistid => 'ubuntu',
    :lsbdistcodename => 'precise',
    :operatingsystem => 'Ubuntu',
    :lsbdistdescription => 'Ubuntu 12.04.2 LTS',
    :memorysize    => '4096 MB',
    }
  end

  let(:controllers_ips) {['10.0.0.1', '10.0.0.2']}

  it { should compile }
  it 'include firewall rules', pending: true do
    should contain_class{'havana::profile::firewall'}
  end
  it { should contain_class('nova::rabbitmq').with_cluster_disk_nodes(controllers_ips) }
  it { should contain_class('memcached').with_listen_ip(controllers_ips.join(' ')) }
end

