class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.11"
  license "MIT"

  on_macos do
    depends_on "sdl3"
    depends_on "sdl3_ttf"
    depends_on "sdl3_image"

    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.11/vessl-macos-arm64-cli.tar.gz"
      sha256 "1f4c63db9d6e1694ee4884e62e56e58d910ea297a9bd8ebe53b7be03595baeef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.11/vessl-linux-amd64.AppImage"
      sha256 "d4d898b2be7b0085b1c40cca52670b2b8efb62bd930d9f56b36b1f372c90159a"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.11/vessl-linux-arm64.AppImage"
      sha256 "d7695593f3e2784c4ee3a2c42b93fd7da6ccc5e567a6a8ff4c1fccd08134fb6d"
    end
  end

  def install
    if OS.mac?
      bin.install "vessl"
    elsif Hardware::CPU.intel?
      bin.install "vessl-linux-amd64.AppImage" => "vessl"
    else
      bin.install "vessl-linux-arm64.AppImage" => "vessl"
    end
  end

  test do
    assert_predicate bin/"vessl", :executable?
  end
end
