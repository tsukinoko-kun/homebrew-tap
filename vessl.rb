class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.17"
  license "MIT"

  on_macos do
    depends_on "sdl3"
    depends_on "sdl3_ttf"
    depends_on "sdl3_image"

    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.17/vessl-macos-arm64-cli.tar.gz"
      sha256 "ed3ae91c01d84669a60b8cb48f559d80e3b955e7c095bc419b537318b159f98f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.17/vessl-linux-amd64.AppImage"
      sha256 "b05eb1757bb22c74938fa33bc8bb7b7eee689a5af04a1ebcacf655159e2abec7"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.17/vessl-linux-arm64.AppImage"
      sha256 "e7a2c4f154637d681cf9524bb0f40ea4c7b0e3255d0f6ae50d674b4a2ada9d7c"
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
