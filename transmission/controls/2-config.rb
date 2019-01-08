control 'transmission-2.0' do
  impact 0.1
  desc '
    Ensure that the transmission app config is created
  '

  file_path = attribute('settings_path')

  describe file(file_path) do
    it { should exist }
    it { should be_file }
    its('md5sum') { should eq 'ceee23ed059ac172c0f22574f43373ff' }
  end
end
