cask "harbor" do
  version "1.0.0"

  on_arm do
    sha256 "e72d59da5897e19139a04adcb712406893209d2ee579afbdb1d0fd986d236520"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.0.0/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
