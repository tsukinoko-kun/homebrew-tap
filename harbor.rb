class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.3/harbor-macos-arm64-cli.tar.gz"
      sha256 "0587b0fe24c6811d232d58984db91039a00c7e4cdec1f274e358d99b749057db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.3/harbor-linux-amd64.tar.gz"
      sha256 "fb39346ac2cd23a94aa9a1799747d8bd5eb4991d060c03fd52ca877c30910f3d"
    end
  end

  def install
    bin.install "harbor"
  end

  test do
    assert_predicate bin/"harbor", :executable?
  end
end
