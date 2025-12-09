cask "vessl" do
  version "0.0.16"
  on_arm do
    sha256 "23d49f84e3a14c3b8a187b482302c292dfa7ca67848ba415c9bfa68b37418175"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.16/vessl-macos-arm64.tar.gz"
  end
  name "Vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  depends_on formula: "sdl3"
  depends_on formula: "sdl3_ttf"
  depends_on formula: "sdl3_image"
  app "Vessl.app"
  binary "#{appdir}/Vessl.app/Contents/MacOS/vessl", target: "vessl"
end
