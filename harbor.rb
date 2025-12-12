class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.0.1/harbor-macos-arm64-cli.tar.gz"
      sha256 "070146ff90a333965173ca2febde9fbbf32c0c3fac38219b320250f086c104f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.0.1/harbor-linux-amd64.AppImage"
      sha256 "498fa5ad1a4d0bb73dd76e8acbf09a2c937ee3ea93849c67fa6829c6027b54d9"
    end
  end

  def install
    if OS.linux?
      bin.install "harbor-linux-amd64.AppImage" => "harbor"
    else
      bin.install "harbor"
    end
  end

  test do
    assert_predicate bin/"harbor", :executable?
  end
end
