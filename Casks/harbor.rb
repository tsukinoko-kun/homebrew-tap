cask "harbor" do
  version "1.4.2"

  on_arm do
    sha256 "3a0945a896e035a1decf52fc2b53aea3b07262770f28936d777615600821d15b"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.4.2/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
