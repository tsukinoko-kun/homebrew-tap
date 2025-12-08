cask "vessl" do
  version "0.0.12"
  on_arm do
    sha256 "d81db881ae443802e283a69a9c062a33c074ba12e7f144811594817d9a0e1fca"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.12/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  depends_on formula: "sdl3"
  depends_on formula: "sdl3_ttf"
  depends_on formula: "sdl3_image"
  app "vessl.app"
end
