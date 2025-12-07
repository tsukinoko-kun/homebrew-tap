cask "vessl" do
  version "0.0.6"
  on_arm do
    sha256 "fe4ca128fb9c077ce57b9a7569a9ba1a0eda277d67904f072eeb361100ff946c"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.6/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  app "vessl.app"
end
