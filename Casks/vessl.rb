cask "vessl" do
  version "0.0.10"
  on_arm do
    sha256 "b2dd888e312cfd7f99ac01dda3f1b8d11ffb6f34da9296450a0af89763f436fd"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.10/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  depends_on formula: "sdl3"
  depends_on formula: "sdl3_ttf"
  depends_on formula: "sdl3_image"
  app "vessl.app"
end
