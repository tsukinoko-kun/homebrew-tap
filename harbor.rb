class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.3.1/harbor-macos-arm64-cli.tar.gz"
      sha256 "7275f6c9d36da2dec9434a7e2cf1fb84af58bf21bae4a9bea9c416abebef2894"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.3.1/harbor-linux-amd64.tar.gz"
      sha256 "76a752d6e1187bcb4918802f619ed8e066f8678b32b80a6a48ec8756a7cf9362"
    end
  end

  def install
    bin.install "harbor"
  end

  test do
    assert_predicate bin/"harbor", :executable?
  end
end
