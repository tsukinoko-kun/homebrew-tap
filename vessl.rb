class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.5/vessl-macos-arm64-cli.tar.gz"
      sha256 "369a8c5a0dada3bc3184d13b4c26578ff096d121bdd25659ec69c58030c75254"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.5/vessl-linux-amd64.tar.gz"
      sha256 "2bf2a3f72f3f7e9d17a8b401f8f262611c524cd89c1c342125ada4ff695bccd4"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.5/vessl-linux-arm64.tar.gz"
      sha256 "894b7adea1113ec86f86fef020ee412fe391c6752c12563d3837f0a3c4cca9ac"
    end
  end

  def install
    bin.install "vessl"
  end

  test do
    assert_predicate bin/"vessl", :executable?
  end
end
