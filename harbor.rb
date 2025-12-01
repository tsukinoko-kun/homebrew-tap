class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.2.0/harbor-macos-arm64-cli.tar.gz"
      sha256 "d1b318e98a484626fccf505679287b319fb4dd6c8da0033676a30dbd6331d26a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.2.0/harbor-linux-amd64.tar.gz"
      sha256 "69055819bd08132477387ba421d60e3dd3f7c72ccdd540bf280e7df8af383ca6"
    end
  end

  def install
    bin.install "harbor"
  end

  test do
    assert_predicate bin/"harbor", :executable?
  end
end
