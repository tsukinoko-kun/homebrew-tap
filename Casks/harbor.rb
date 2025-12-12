cask "harbor" do
  version "0.3.1"

  on_arm do
    sha256 "49376ba788cdbc18ae00eaba634cb5a370c0fad2f3ab7bff9e55b5a962f1052d"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.3.1/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
