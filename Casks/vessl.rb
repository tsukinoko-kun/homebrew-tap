cask "vessl" do
  version "0.0.11"
  on_arm do
    sha256 "848e4bd140ee6e4370c8f6c5e6ce9eddc90a432467978e5129df6746d38d8df7"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.11/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  depends_on formula: "sdl3"
  depends_on formula: "sdl3_ttf"
  depends_on formula: "sdl3_image"
  app "vessl.app"
end
