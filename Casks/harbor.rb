cask "harbor" do
  version "1.1.0"

  on_arm do
    sha256 "43767dc1f213251b76cfda25378a57f99ec9e6a25bee75c451e9d6c4ccbdd7d0"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.1.0/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
