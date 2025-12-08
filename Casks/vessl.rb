cask "vessl" do
  version "0.0.7"
  on_arm do
    sha256 "79f93fa4205b63f25212514bee867bea312277b72fc767ffb176e1311bb3d452"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.7/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  app "vessl.app"
end
