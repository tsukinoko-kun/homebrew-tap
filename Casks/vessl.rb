cask "vessl" do
  version "0.0.15"
  on_arm do
    sha256 "1075093c66f3ace4ac0a72088db8e9416646378ff8edee3511c448deb9ce4d73"
    url "https://github.com/bloodmagesoftware/vessl/releases/download/v0.0.15/vessl-macos-arm64.tar.gz"
  end
  name "vessl"
  desc "High-performance extensible IDE"
  homepage "https://github.com/bloodmagesoftware/vessl"
  depends_on formula: "sdl3"
  depends_on formula: "sdl3_ttf"
  depends_on formula: "sdl3_image"
  app "vessl.app"
end
