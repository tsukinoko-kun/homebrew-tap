cask "harbor" do
  version "1.2.0"

  on_arm do
    sha256 "b2b4e2eb55c0a590884f5121f219af3648ddeae90ebb6191b2ee0c00b8994f81"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.2.0/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
