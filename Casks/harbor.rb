cask "harbor" do
  version "1.0.2"

  on_arm do
    sha256 "a7e06fb88430fdd312cac1500847cfd6030386787416e3ebc721881c4146f8ab"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.0.2/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
