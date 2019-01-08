control 'transmission-1.0' do
  impact 0.1
  desc '
    Ensure that the transmission app is installed and configured
  '

  describe package('transmission-daemon') do
    it { should be_installed }
  end

  describe service('transmission-daemon') do
    it { should be_enabled }
    it { should be_running }
  end
end
