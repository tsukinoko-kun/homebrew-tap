class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.14"
  license "MIT"

  on_macos do
    depends_on "sdl3"
    depends_on "sdl3_ttf"
    depends_on "sdl3_image"

    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.14/vessl-macos-arm64-cli.tar.gz"
      sha256 "233e735af67641fb3aaeb160779aaa6df77998bebbb6158689c73b02b2354ec9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.14/vessl-linux-amd64.AppImage"
      sha256 "c00b2205b5008433f32fe81eab4946f79409d4b9971f8e8adb658cf3ea209540"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.14/vessl-linux-arm64.AppImage"
      sha256 "0a218053f61714d8f8f7827dbc78dac5b1f75829b69d5a99e6720885f305c84c"
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
