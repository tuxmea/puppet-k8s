Facter.add(:k8s_ca) do
  confine { File.exist? '/etc/kubernetes/certs/ca.pem' }
  setcode do
    Base64.strict_encode(File.read('/etc/kubernetes/certs/ca.pem'))
  end
end
