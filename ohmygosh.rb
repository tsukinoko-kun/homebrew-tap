# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ohmygosh < Formula
  desc "Interactive shell written in Go with a UI inspired by Warp"
  homepage "https://github.com/tsukinoko-kun/ohmygosh"
  version "0.1.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/tsukinoko-kun/ohmygosh/releases/download/v0.1.0/ohmygosh_0.1.0_darwin_amd64.tar.gz"
      sha256 "b0b96784dc75eeccfef227af5584d6912d5b0d9d6fb3357d6e03aa3d77e3fa78"

      def install
        bin.install "ohmygosh"
      end
    end
    on_arm do
      url "https://github.com/tsukinoko-kun/ohmygosh/releases/download/v0.1.0/ohmygosh_0.1.0_darwin_arm64.tar.gz"
      sha256 "cebcffe4145c9028928ebab09efaf8040fab3e92d98e2cb277c91687219ef55f"

      def install
        bin.install "ohmygosh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/ohmygosh/releases/download/v0.1.0/ohmygosh_0.1.0_linux_amd64.tar.gz"
        sha256 "7a134b06c3ae53bc5de9d80ac0ee1d419cdc7bb0cbc42848330959d4baa9ff74"

        def install
          bin.install "ohmygosh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/ohmygosh/releases/download/v0.1.0/ohmygosh_0.1.0_linux_arm64.tar.gz"
        sha256 "98940b4eb099a7d7de052b94bfaebd765fc97d311d25e0031f3526a6face39b8"

        def install
          bin.install "ohmygosh"
        end
      end
    end
  end
end
