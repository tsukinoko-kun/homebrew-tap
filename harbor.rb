class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.2.0/harbor-macos-arm64-cli.tar.gz"
      sha256 "211c608e577abf932ee83c6333f029c3cf8de4eff7b0d60611d4ea55dea0a237"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.2.0/harbor-linux-amd64.AppImage"
      sha256 "baf53fbbfba54d0300cc871db058f5c4bf68291d2a01aecd0a65709dce241554"
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
