class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.16"
  license "MIT"

  on_macos do
    depends_on "sdl3"
    depends_on "sdl3_ttf"
    depends_on "sdl3_image"

    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.16/vessl-macos-arm64-cli.tar.gz"
      sha256 "34f8c43e88c41c0a8fd317337f083a953220dc2af310bc16a62dd3069fb2655a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.16/vessl-linux-amd64.AppImage"
      sha256 "a30a02ad2337aa7077ad1deb4595c3ead524a7b55d40f438fc2b41e55359fef5"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.16/vessl-linux-arm64.AppImage"
      sha256 "a1f670ea7857816888ad75427c6003c4309624ee7995162a5f6518008c54f755"
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
