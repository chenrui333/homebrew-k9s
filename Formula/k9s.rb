# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k8sk9s.dev/"
  version "0.13.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/k9s/releases/download/v0.13.4/k9s_0.13.4_Darwin_x86_64.tar.gz"
    sha256 "954d8f65a37526eb3f0df14e9c06ae1a9280b0c00d281e7bee8c6d4563d42486"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.13.4/k9s_0.13.4_Linux_x86_64.tar.gz"
      sha256 "6c8502723ee624d83e7ec98e96334f83fa17b491d3fa5c4cfb97b022e790d3fe"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/k9s/releases/download/v0.13.4/k9s_0.13.4_Linux_arm64.tar.gz"
        sha256 "34eafda836a91aeb51c390c31e7e3ecb2a52956cd61afe353a2041d6df73072f"
      else
        url "https://github.com/derailed/k9s/releases/download/v0.13.4/k9s_0.13.4_Linux_armv6.tar.gz"
        sha256 "aed1ce97a9a7766ddcdd89095dfbbee234e7e002efdbf50a6f3f2e043373f81e"
      end
    end
  end

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
