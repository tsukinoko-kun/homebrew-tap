class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.0.2/harbor-macos-arm64-cli.tar.gz"
      sha256 "7ae6f8766a6c4f5ddd4a087e3b4d3fb0cbd8d1367d1d9b4eebe95f17cbb72e62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.0.2/harbor-linux-amd64.AppImage"
      sha256 "326ace9b5dffdad0e3814e85b18c5f49eea6a101cb0af59550554291329acea3"
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
