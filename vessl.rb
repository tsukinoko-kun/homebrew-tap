class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.4/vessl-macos-arm64-cli.tar.gz"
      sha256 "d74c6e36a9040f2480c21539d674d968b793d88ac09293e374ef120defe9edf0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.4/vessl-linux-amd64.tar.gz"
      sha256 "9b58190a6a42ae44b1b53a9b92563dacb972596f5ab837f93022ee0c04bf73a2"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.4/vessl-linux-arm64.tar.gz"
      sha256 "727b041ec3146ff70508104d9a4300e5dec6db1ddbab53eefeb8e2fa8070a28c"
    end
  end

  def install
    bin.install "vessl"
  end

  test do
    assert_predicate bin/"vessl", :executable?
  end
end
