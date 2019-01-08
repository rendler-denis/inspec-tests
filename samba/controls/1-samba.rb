control 'samba-1.0' do
  impact 1.0
  desc '
    Ensure that the samba app is installed and running
  '

  describe package('samba') do
    it { should be_installed }
  end

  describe service('smbd') do
    it { should be_enabled }
    it { should be_running }
  end
end
