# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Drop < Formula
  desc "drop is a replacement for the GNU `rm` command"
  homepage "https://github.com/tsukinoko-kun/drop"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tsukinoko-kun/drop/releases/download/v0.0.1/drop_0.0.1_darwin_amd64.tar.gz"
      sha256 "962ca49bf405429c0aa7c0ffeffec680a89e6c8edd385c094de5df6e9b90a609"

      def install
        bin.install "drop"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tsukinoko-kun/drop/releases/download/v0.0.1/drop_0.0.1_darwin_arm64.tar.gz"
      sha256 "c87624adafae8ef628d80d3609f600a84ea4d68dc6f6f5a51252375ae134890f"

      def install
        bin.install "drop"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tsukinoko-kun/drop/releases/download/v0.0.1/drop_0.0.1_linux_amd64.tar.gz"
      sha256 "26e1815d1c72e0e8b2801b51306bc81e0dd872bcfe0570320e571c8a757d69a3"

      def install
        bin.install "drop"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tsukinoko-kun/drop/releases/download/v0.0.1/drop_0.0.1_linux_arm64.tar.gz"
      sha256 "2b0fbc0d1ee4a0d367e312e687c78fbcbd60a9f63c894537f7f75f6f3a1417d0"

      def install
        bin.install "drop"
      end
    end
  end
end
