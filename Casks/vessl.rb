cask "vessl" do
  version "0.0.3"
  on_arm do
    sha256 "7065c481025aff2fcd7e8bc651e1910021ed374210c6ddd4137cc3d12ed85a8d"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.3/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  app "vessl.app"
end
