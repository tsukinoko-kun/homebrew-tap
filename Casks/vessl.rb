cask "vessl" do
  version "0.0.4"
  on_arm do
    sha256 "4c228394cc5a139b38fca9778de14d8bfa609867966096e18a6b3e08abf9a24a"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.4/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  app "vessl.app"
end
