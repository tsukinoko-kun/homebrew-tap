class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.0/harbor-macos-arm64.tar.gz"
      sha256 "82627fade75efe513f18918aced57572d1c046c4fcd3b1d2a4e98aa7524a73f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.0/harbor-linux-amd64.tar.gz"
      sha256 "b0f9c6e36a86ec74d8bda91840608b55b75606e25a782e761a1efeae1c2a1582"
    end
  end

  def install
    bin.install "harbor"
  end

  test do
    assert_predicate bin/"harbor", :executable?
  end
end
