cask "vessl" do
  version "0.0.16"
  on_arm do
    sha256 "85298b709ba82063b2cb122be51e1f1d481e5d5c1a9efca4fb052ccd5121ca22"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.16/vessl-macos-arm64.tar.gz"
  end
  name "Vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  depends_on formula: "sdl3"
  depends_on formula: "sdl3_ttf"
  depends_on formula: "sdl3_image"
  app "Vessl.app"
  binary "vessl"
end
