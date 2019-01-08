control 'samba-3.0' do
  impact 1.0
  desc '
    Ensure that the samba users are registered with the OS
  '

  describe user('test_user') do
    it { should exist }
  end
end

control 'samba-3.1' do
  impact 1.0
  desc '
    Ensure that the samba users are registered in samba
  '

  describe command('pdbedit -L') do
    its('stdout') { should match 'test_user:1111:' }
  end
end
