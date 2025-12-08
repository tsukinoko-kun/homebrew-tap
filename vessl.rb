class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.7/vessl-macos-arm64-cli.tar.gz"
      sha256 "9bacdb969a24ae4256c61cb2f0ad22f028ec4fd61f9611aa44f8b3bc94810f3c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.7/vessl-linux-amd64.tar.gz"
      sha256 "554df48e4f08d1fe2c64dd1b14b674b879ec458fcfedfbe7ffb120039674c30f"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.7/vessl-linux-arm64.tar.gz"
      sha256 "9dfc58b9ebf3abf344ffdfc9943598b81b2242d3c593107cb6586220162a69a1"
    end
  end

  def install
    bin.install "vessl"
  end

  test do
    assert_predicate bin/"vessl", :executable?
  end
end
