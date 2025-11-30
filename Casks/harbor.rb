cask "harbor" do
  version "0.0.3"

  on_arm do
    sha256 "cc8c006ab2868c2e3274659476068ef91c3048e00b31f8c49ff5e97e82e42722"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.0.3/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  binary "harbor"
end
