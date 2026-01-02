cask "harbor" do
  version "1.4.1"

  on_arm do
    sha256 "0cd445ae51b5496896ab9e8b9cb6b9e0ea155620a7eb1f2e404c2f35aecabf25"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.4.1/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
