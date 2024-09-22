# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smash < Formula
  desc "Cross platform interactive shell"
  homepage "https://github.com/tsukinoko-kun/smash"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/tsukinoko-kun/smash/releases/download/v0.1.0/smash_0.1.0_darwin_amd64.tar.gz"
      sha256 "50923dc0434696539339da7ff392575bcd0ebfcedcef70171c268aec0f22e67a"

      def install
        bin.install "smash"
      end
    end
    on_arm do
      url "https://github.com/tsukinoko-kun/smash/releases/download/v0.1.0/smash_0.1.0_darwin_arm64.tar.gz"
      sha256 "34e096f16b27643b800be7b1feb44b474e8d21953a95b9e5c3082f300825227d"

      def install
        bin.install "smash"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/smash/releases/download/v0.1.0/smash_0.1.0_linux_amd64.tar.gz"
        sha256 "a07928f9b99b928b41c0ab33739bccd24c2a0d1c4cde1ecac4cfc664b785f49e"

        def install
          bin.install "smash"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/smash/releases/download/v0.1.0/smash_0.1.0_linux_arm64.tar.gz"
        sha256 "2d7f9e87d6b78a8a3d3e2c4856ff699641b870cbe970b0d9e8cb91793d4da1fe"

        def install
          bin.install "smash"
        end
      end
    end
  end
end
