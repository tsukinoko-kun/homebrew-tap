cask "vessl" do
  version "0.0.5"
  on_arm do
    sha256 "4f94ef51dcbf48bd6057e5d8c7698755f3c548b588650b9738dada4a6396fbb2"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.5/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  app "vessl.app"
end
