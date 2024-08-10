# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gourmet < Formula
  desc "Write build scripts for Go projects in Go"
  homepage "https://github.com/tsukinoko-kun/gourmet"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/tsukinoko-kun/gourmet/releases/download/v0.1.1/gourmet_0.1.1_darwin_amd64.tar.gz"
      sha256 "acae066d80422335f7e664e5b2200fe40072bb9ba5d73e4f8b39ab37fddfed60"

      def install
        bin.install "gourmet"
      end
    end
    on_arm do
      url "https://github.com/tsukinoko-kun/gourmet/releases/download/v0.1.1/gourmet_0.1.1_darwin_arm64.tar.gz"
      sha256 "13629c02fe4c0b70fb785d45506e3cebf4427429c7ad61accee4e372f2fe5212"

      def install
        bin.install "gourmet"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/gourmet/releases/download/v0.1.1/gourmet_0.1.1_linux_amd64.tar.gz"
        sha256 "40b2d7ba303f1c3c545fced892bd3185cf82d00482504d07bab256c7004ec70f"

        def install
          bin.install "gourmet"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/gourmet/releases/download/v0.1.1/gourmet_0.1.1_linux_arm64.tar.gz"
        sha256 "0d0eddb97d2383fbca6e0e7df48a845871208e1ea338303f0d1531bd887b6d24"

        def install
          bin.install "gourmet"
        end
      end
    end
  end
end
