class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.13"
  license "MIT"

  on_macos do
    depends_on "sdl3"
    depends_on "sdl3_ttf"
    depends_on "sdl3_image"

    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.13/vessl-macos-arm64-cli.tar.gz"
      sha256 "620ced7cd89b37459d7960ab0d4e3c6ad18db797d14289b4b923533ff162b5dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.13/vessl-linux-amd64.AppImage"
      sha256 "184a752160fce307ac916c09622842571a90470b79e8a36951a1aefab8e5224e"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.13/vessl-linux-arm64.AppImage"
      sha256 "02e01ae6f6eacca0617d5e1ce006df3d46786a8c5093586d13c97c1dad87d488"
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
