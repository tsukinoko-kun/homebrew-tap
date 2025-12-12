class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.0.0/harbor-macos-arm64-cli.tar.gz"
      sha256 "5f1354b204c2782182764353bd97d10b6f95c2d98236cdc033e09c84a2353ed1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.0.0/harbor-linux-amd64.tar.gz"
      sha256 "784935da76123997060b2171ad3c952a9a774f3a82a30a37191bf3495bac5991"
    end
  end

  def install
    bin.install "harbor"
  end

  test do
    assert_predicate bin/"harbor", :executable?
  end
end
