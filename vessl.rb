class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.12"
  license "MIT"

  on_macos do
    depends_on "sdl3"
    depends_on "sdl3_ttf"
    depends_on "sdl3_image"

    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.12/vessl-macos-arm64-cli.tar.gz"
      sha256 "9265e5f600783fd2b691c91862245b083fcaa26e63fc0dbd635e5ce3d08107de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.12/vessl-linux-amd64.AppImage"
      sha256 "9d35a78b9af018853155b71d9e29518c14ab48d5cb91531d1b16a0ae285c4224"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.12/vessl-linux-arm64.AppImage"
      sha256 "e7768f358648888bbcba76604dbe49bc1a878ee4e927832e497c852ba2070e6d"
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
