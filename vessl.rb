class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.2/vessl-macos-arm64-cli.tar.gz"
      sha256 "dbadb82783a26018b3585538cebde0e82c3dda3a187fd687b604892095dc32d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.2/vessl-linux-amd64.tar.gz"
      sha256 "66e594f6e352decdaed77a3575eb9b5db325b22a32748ce7b3ed527eb8438a63"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.2/vessl-linux-arm64.tar.gz"
      sha256 "61a9d35e86ee3bb0673545881b898836631622030c8e40b450853ecd5ac24551"
    end
  end

  def install
    bin.install "vessl"
    (share/"vessl").install "assets"
  end

  test do
    assert_predicate bin/"vessl", :executable?
  end
end
