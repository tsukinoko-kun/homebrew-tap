cask "vessl" do
  version "0.0.13"
  on_arm do
    sha256 "47a7403097effc119ef5dd1c1729821b5d8628f0f742404747ec2d8bcba5ffc9"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.13/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  depends_on formula: "sdl3"
  depends_on formula: "sdl3_ttf"
  depends_on formula: "sdl3_image"
  app "vessl.app"
end
