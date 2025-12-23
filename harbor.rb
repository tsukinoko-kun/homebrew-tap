class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.4.0/harbor-macos-arm64-cli.tar.gz"
      sha256 "86d4b091cbe45fc91336f93c5a6e89e0a71a417058749ba089d8574bebdb138d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.4.0/harbor-linux-amd64.AppImage"
      sha256 "7eb2b6af9727ea0ac16965f43ffb25769ad143afaa9a4fba82acf73b55671fd0"
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
