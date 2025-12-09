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
      sha256 "6386a69c3c319aeff1148f8d23c618fb75a6d7180f1b51c45f902c1687e39a4d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.16/vessl-linux-amd64.AppImage"
      sha256 "ed17a51f8229c5e0912cef4ee0add3328df25cb2432e51be2e3310e83f64cd9d"
    end
    on_arm do
      url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.16/vessl-linux-arm64.AppImage"
      sha256 "ee098048507a75a31250b46d51ef7713ca8c836758952b6204bd3a50ee7479ce"
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
