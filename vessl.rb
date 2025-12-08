class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.8/vessl-macos-arm64-cli.tar.gz"
      sha256 "ec8b98a2016dc834da1e875e4e9ecd5c77949abeee2e38094bc2ec66b8f6f84b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.8/vessl-linux-amd64.tar.gz"
      sha256 "fcad03f8422737259ce9de7d9cd9a308472cdf44dc3d8e0ae81672ae1ca52d03"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.8/vessl-linux-arm64.tar.gz"
      sha256 "8550ce6e96503d4a164b82dae0710ae882fdee51b6695d39bef77da04dabac54"
    end
  end

  def install
    bin.install "vessl"
  end

  test do
    assert_predicate bin/"vessl", :executable?
  end
end
