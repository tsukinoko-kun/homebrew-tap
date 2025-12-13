class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.3.0/harbor-macos-arm64-cli.tar.gz"
      sha256 "623920c88a42a244fc4ef194fa3ecead1efd81d8621c4df17807ecf8b58c4aa6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.3.0/harbor-linux-amd64.AppImage"
      sha256 "80e0dcaaac7c07dc02d4dd3a96af303b5c47becc8928645e4ac60a6702936817"
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
