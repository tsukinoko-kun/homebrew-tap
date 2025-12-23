cask "harbor" do
  version "1.4.0"

  on_arm do
    sha256 "0f8a1c16eee61a10d0e579cd4810c3f7955156efda92bb89091f140dac27b5d3"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.4.0/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
