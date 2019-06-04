# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9ss.io"
  url "https://github.com/derailed/k9s/releases/download/0.7.5/k9s_0.7.5_Darwin_x86_64.tar.gz"
  version "0.7.5"
  sha256 "f1b9ec6c093d6f34059d7b686c5238157a3b852ac5b848d35de1d40800bbbc96"

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
