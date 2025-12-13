cask "harbor" do
  version "1.3.0"

  on_arm do
    sha256 "39648e2aa8b2cc15f3a85963d03a5dc048f52eb19dea587bcf2ccdec462b749f"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v1.3.0/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  app "Harbor.app"
end
