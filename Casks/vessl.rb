cask "vessl" do
  version "0.0.2"
  on_arm do
    sha256 "b09a5c7481c7649da9c568166238e528e35c31263a1d634568dbee54febc8edf"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.2/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  app "vessl.app"
end
