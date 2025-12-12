cask "harbor" do
  version "1.0.1"

  on_arm do
    sha256 "5134a70674fa94aef23beaef9046bf0050755b8656d6acfd4b2c602bea3e61bd"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.0.1/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
