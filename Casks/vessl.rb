cask "vessl" do
  version "0.0.17"
  on_arm do
    sha256 "98f13afc3c945ba59ba79fa32812b6441d5bae5529b392b183b9ffda4c7a09c2"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.17/vessl-macos-arm64.tar.gz"
  end
  name "Vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  depends_on formula: "sdl3"
  depends_on formula: "sdl3_ttf"
  depends_on formula: "sdl3_image"
  app "Vessl.app"
  binary "#{appdir}/Vessl.app/Contents/MacOS/vessl-cli", target: "vessl"
end
