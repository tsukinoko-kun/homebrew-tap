class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.3/vessl-macos-arm64-cli.tar.gz"
      sha256 "50237cd4e2572ef6278053ad75022a0b59cc388897abaab40589c07135cd2cf3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.3/vessl-linux-amd64.tar.gz"
      sha256 "87e4f1194df3ba02a5527270675565b6218ea7d4fa5ec43ce89406ab8560d811"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.3/vessl-linux-arm64.tar.gz"
      sha256 "4c0d65f76fb0cfeb665efcc0fc9db8100caad661ccc813c1ac6ce385f5ce2151"
    end
  end

  def install
    bin.install "vessl"
  end

  test do
    assert_predicate bin/"vessl", :executable?
  end
end
