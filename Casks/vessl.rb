cask "vessl" do
  version "0.0.14"
  on_arm do
    sha256 "dbc6b41e0b289de31074f06e9cd99f847a6f9d53844edc835da89067309e93a2"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.14/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  depends_on formula: "sdl3"
  depends_on formula: "sdl3_ttf"
  depends_on formula: "sdl3_image"
  app "vessl.app"
end
