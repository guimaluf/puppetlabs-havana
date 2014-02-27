require 'spec_helper'


describe 'havana::role::ha::controller' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  let(:title) { 'profile_base' }

  let(:facts) do {
    :osfamily => 'Debian',
    :lsbdistid => 'ubuntu',
    :lsbdistcodename => 'precise',
    :operatingsystem => 'Ubuntu',
    :lsbdistdescription => 'Ubuntu 12.04.2 LTS',
    }
  end

  it { should compile }
  it 'include firewall rules', pending: true do
    should contain_class{'havana::profile::firewall'}
  end
  it { should contain_class('nova::rabbitmq').with_cluster_disk_nodes(['10.0.0.1', '10.0.0.2']) }
  it { should contain_class('havana::profile::memcache') }
end

