cask "harbor" do
  version "0.1.3"

  on_arm do
    sha256 "eb096d542b940466c7f51fafd8d03a4d25dcc32da3e42de2d39ffd9c4b2422b9"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.3/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
