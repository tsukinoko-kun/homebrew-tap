# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zzh < Formula
  desc "Simple SSH wrapper"
  homepage "https://github.com/tsukinoko-kun/zzh"
  version "0.0.1"

  on_macos do
    on_intel do
      url "https://github.com/tsukinoko-kun/zzh/releases/download/v0.0.1/zzh_0.0.1_darwin_amd64.tar.gz"
      sha256 "a3c9851ad5c31257e0a8fd609e16589c3f8e756f5028ee437cb611a026030148"

      def install
        bin.install "zzh"
      end
    end
    on_arm do
      url "https://github.com/tsukinoko-kun/zzh/releases/download/v0.0.1/zzh_0.0.1_darwin_arm64.tar.gz"
      sha256 "8358f7ca585a24e4564f1cdf9bc48c8f77adb696819d21474bf47815303b8790"

      def install
        bin.install "zzh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/zzh/releases/download/v0.0.1/zzh_0.0.1_linux_amd64.tar.gz"
        sha256 "73a68152da06c45cb88bbb205230c3c8552c360ec00bf20a8ed5baba1094c457"

        def install
          bin.install "zzh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/zzh/releases/download/v0.0.1/zzh_0.0.1_linux_arm64.tar.gz"
        sha256 "79366337146e24278b94014f5e91201cd99e56b6a4209a215825da6fe69be1a0"

        def install
          bin.install "zzh"
        end
      end
    end
  end
end
