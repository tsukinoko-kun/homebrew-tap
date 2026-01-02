class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.4.1/harbor-macos-arm64-cli.tar.gz"
      sha256 "f3d0af3224dde5a804c278614edc24aed69fd3d36a27e61e42352bc1b4b3cd80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.4.1/harbor-linux-amd64.AppImage"
      sha256 "fd178e2053bbc89e76030b03e84e1d2e0de0dbe465dcf4c5a18108341fa9908a"
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
