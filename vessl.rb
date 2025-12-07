class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.6/vessl-macos-arm64-cli.tar.gz"
      sha256 "66e1fdb9ce51d0ddbb50cdc5c251a142ae9852af619a8126d5a8fc8b6115ef94"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.6/vessl-linux-amd64.tar.gz"
      sha256 "e7bf2e2307d4bd058b0750af1ad85f72fe58f54e516627f7eada8ca629c6d5f7"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.6/vessl-linux-arm64.tar.gz"
      sha256 "3718508181a67a0b8a2c2db748bc16b43ec7fb2d7bae1fc6199b3294eb9a398d"
    end
  end

  def install
    bin.install "vessl"
  end

  test do
    assert_predicate bin/"vessl", :executable?
  end
end
