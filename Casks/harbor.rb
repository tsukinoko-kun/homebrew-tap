cask "harbor" do
  version "0.1.2"

  on_arm do
    sha256 "6630d472730560b3e7e7895314e7588a559a84eb8e1834efd128c33751005e0c"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.2/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
