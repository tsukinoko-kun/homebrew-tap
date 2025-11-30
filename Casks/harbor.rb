cask "harbor" do
  version "0.1.0"

  on_arm do
    sha256 "82627fade75efe513f18918aced57572d1c046c4fcd3b1d2a4e98aa7524a73f9"
    url "https://github.com/tsukinoko-kun/harbor/releases/download/v0.1.0/harbor-macos-arm64.tar.gz"
  end

  name "Harbor"
  desc "GUI application for Docker"
  homepage "https://github.com/tsukinoko-kun/harbor"

  binary "harbor"
end
