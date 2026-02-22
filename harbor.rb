class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "1.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.4.2/harbor-macos-arm64-cli.tar.gz"
      sha256 "49564ca2c84dc84c8a9056c1c68e7e3d3d53e0c9d3705b10a252b62ce8fba788"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.4.2/harbor-linux-amd64.AppImage"
      sha256 "afb06fb6264fef32f1d4fa45ca67a01fb8c51b48d00b90f8a564cdf84c0567a9"
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
