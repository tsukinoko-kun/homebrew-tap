class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.1/harbor-macos-arm64.tar.gz"
      sha256 "3c7b73abff63e46038838ce4acabc63ebf8d6f2ed30c13b337c9527aa0fb7a5c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.1/harbor-linux-amd64.tar.gz"
      sha256 "c448c1204e290835d9a4f0fa09db6da05855a5498292c05471da06937bac4849"
    end
  end

  def install
    bin.install "harbor"
  end

  test do
    assert_predicate bin/"harbor", :executable?
  end
end
