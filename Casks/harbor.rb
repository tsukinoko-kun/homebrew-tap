cask "harbor" do
  version "0.1.1"

  on_arm do
    sha256 "3c7b73abff63e46038838ce4acabc63ebf8d6f2ed30c13b337c9527aa0fb7a5c"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.1/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
