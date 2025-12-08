class Vessl < Formula
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  version "0.0.15"
  license "MIT"

  on_macos do
    depends_on "sdl3"
    depends_on "sdl3_ttf"
    depends_on "sdl3_image"

    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.15/vessl-macos-arm64-cli.tar.gz"
      sha256 "7c5fe913d2e42aa7d7cd4e86c6dd3bc021d33b4d03c9d03dd06b4797d568b8e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.15/vessl-linux-amd64.AppImage"
      sha256 "a809bec9a7d3f68fdb2be9b60ea8e8ed176ab1140c228f5b79ff05af61c50017"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.15/vessl-linux-arm64.AppImage"
      sha256 "755668ac92157a5d721c8f0dadc53200b86d7e4a5615a45eea95af88ceb964e9"
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
