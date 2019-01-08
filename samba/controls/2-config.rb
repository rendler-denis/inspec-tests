control 'samba-2.0' do
  impact 1.0
  desc '
    Ensure that the samba config exists
  '

  describe file('/etc/samba/smb.conf') do
    it { should exist }
    it { should be_file }
  end
end

control 'samba-2.1' do
  impact 1.0
  desc '
    Ensure that the samba workgroup <test> is configured
  '

  describe file('/etc/samba/smb.conf') do
    its('content') { should match '\s*workgroup = test'}
  end
end

control 'samba-2.2' do
  impact 1.0
  desc '
    Ensure that the samba tbox share is configured
  '

  describe file('/etc/samba/smb.conf') do
    its('content') { should match 'BEGIN ANSIBLE MANAGED BLOCK test-box\n' }
    its('content') { should match '\[test\-box\]\n' }
  end
end
