require 'spec_helper'


describe 'havana::profile::base' do
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
#
#  it { should contain_class('ntp') }
#  it { should contain_class('openstack::repo') }
#  it { should contain_resource('apt::source').with }
end
