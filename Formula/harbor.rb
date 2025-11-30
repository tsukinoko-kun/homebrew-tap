class Harbor < Formula
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.0.3/harbor-macos-arm64.tar.gz"
      sha256 "cc8c006ab2868c2e3274659476068ef91c3048e00b31f8c49ff5e97e82e42722"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.0.3/harbor-linux-amd64.tar.gz"
      sha256 "a1c9f2e8d06acd45e7e9848aac5a77cf82b88accf1494c4ee95d907b50b58931"
    end
  end

  def install
    bin.install "harbor"
  end

  test do
    assert_predicate bin/"harbor", :executable?
  end
end
