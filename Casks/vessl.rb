cask "vessl" do
  version "0.0.8"
  on_arm do
    sha256 "52d0916a8036d2c4b265d86e1ce371c411f9d439867791671d8e222c8a305b18"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.8/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  app "vessl.app"
end
