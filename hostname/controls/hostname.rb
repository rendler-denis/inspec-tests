control 'locale-1.0' do
  impact 0.1
  desc '
    Ensure that locales are set according to script
  '

  describe os_env('LC_ALL') do
    its('content') { should eq 'en_GB.UTF-8' }
  end

  describe file('/etc/default/locale') do
    it { should exist }
    it { should be_file }
    its('content') { should eq "LANG=en_GB.UTF-8\nLC_ALL=en_GB.UTF-8\n" }
  end
end
