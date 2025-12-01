class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.2/harbor-macos-arm64-cli.tar.gz"
      sha256 "e424b6475514469e563e1c036def7102c47e75607d0d24933607d572c11596ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.2/harbor-linux-amd64.tar.gz"
      sha256 "18f0c581ae797a405898c3ad0f9f7e71807d94177cdffd8bfe025549ef0c2ffe"
    end
  end

  def install
    bin.install "harbor"
  end

  test do
    assert_predicate bin/"harbor", :executable?
  end
end
