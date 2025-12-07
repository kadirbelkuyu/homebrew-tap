class Kubecfg < Formula
  desc "A fast, secure CLI tool for managing Kubernetes kubeconfig files"
  homepage "https://github.com/kadirbelkuyu/kubecfg"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kadirbelkuyu/kubecfg/releases/download/v#{version}/kubecfg_#{version}_darwin_arm64.tar.gz"
      sha256 "ADIM_2_DEN_ALDIGIN_DARWIN_ARM64_HASH"
    else
      url "https://github.com/kadirbelkuyu/kubecfg/releases/download/v#{version}/kubecfg_#{version}_darwin_amd64.tar.gz"
      sha256 "ADIM_2_DEN_ALDIGIN_DARWIN_AMD64_HASH"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kadirbelkuyu/kubecfg/releases/download/v#{version}/kubecfg_#{version}_linux_arm64.tar.gz"
      sha256 "ADIM_2_DEN_ALDIGIN_LINUX_ARM64_HASH"
    else
      url "https://github.com/kadirbelkuyu/kubecfg/releases/download/v#{version}/kubecfg_#{version}_linux_amd64.tar.gz"
      sha256 "ADIM_2_DEN_ALDIGIN_LINUX_AMD64_HASH"
    end
  end

  def install
    bin.install "kubecfg"
  end

  test do
    system "#{bin}/kubecfg", "--help"
  end
end
