# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9ss.io"
  version "0.1.0"

  if os.Mac?
  url "https://github.com/derailed/k9s/releases/download/0.7.12/k9s_0.7.12_Darwin_x86_64.tar.gz"
  sha256 "5275223cb1efee19d97cc63e46e461fbde34993f6af43e3f1ff2c4bd63bb6a35"
  elsif os.Linux?
    url "https://github.com/derailed/k9s/releases/download/0.7.12/k9s_0.7.12_Linux_x86_64.tar.gz"
    sha256 "0d4ef92c2da1aa73e8da60aeae1ae0004bcf42e5e1ed8d982ea0fca8b8633ebe"
  end

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
