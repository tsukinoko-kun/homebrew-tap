cask "harbor" do
  version "0.2.0"

  on_arm do
    sha256 "95e3fa2f0f08031b09bffac658700fb5a142324a072f13499b85e3e5a397c93c"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.2.0/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
