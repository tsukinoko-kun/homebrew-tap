class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.1.0/harbor-macos-arm64-cli.tar.gz"
      sha256 "8397e003177995c0c280a296ba7af6a49f93cbc8fb0028178749d4140c795f2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.1.0/harbor-linux-amd64.AppImage"
      sha256 "1314694871a81ad29682147a2197b2ca9d4697d562ff0a18e6158b02c0099adb"
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
