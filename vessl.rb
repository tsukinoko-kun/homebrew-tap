class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.10"
  license "MIT"

  depends_on "sdl3"
  depends_on "sdl3_ttf"
  depends_on "sdl3_image"

  on_macos do
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.10/vessl-macos-arm64-cli.tar.gz"
      sha256 "c53c3a45e7cb119294f74ecb4318c560194bf49efcfb5e451d66f4d1a2d0a9ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.10/vessl-linux-amd64.tar.gz"
      sha256 "da41325da5145190e678aacc3a06420d4532e264f5484d756bace6b17ac16b46"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.10/vessl-linux-arm64.tar.gz"
      sha256 "6caf4d6ff3fa98d45645731e1631ccf3a4266326d0fad6532829d3ad3c45308a"
    end
  end

  def install
    bin.install "vessl"
  end

  test do
    assert_predicate bin/"vessl", :executable?
  end
end
