# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Portal < Formula
  desc "Simple local file sharing"
  homepage "https://github.com/tsukinoko-kun/portal"
  version "1.1.0"

  on_macos do
    on_intel do
      url "https://github.com/tsukinoko-kun/portal/releases/download/v1.1.0/portal_1.1.0_darwin_amd64.tar.gz"
      sha256 "f24fbd20f1cf375e62555ad2f92b818be8e27004f8f59426dd50ca77d42467cc"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://github.com/tsukinoko-kun/portal/releases/download/v1.1.0/portal_1.1.0_darwin_arm64.tar.gz"
      sha256 "0c97c5c7f841d38ec23e1c883fa88fda94fb7e48573f344cb119ff96c8046bbd"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/portal/releases/download/v1.1.0/portal_1.1.0_linux_amd64.tar.gz"
        sha256 "e11f65740df69c9b9a36369faad28b5a756c11508ada7f4ef9dafcbed6edb9dd"

        def install
          bin.install "portal"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/portal/releases/download/v1.1.0/portal_1.1.0_linux_arm64.tar.gz"
        sha256 "25518aa7699c78675650edb7716fad4e70d64b1771f090c9198eb76372989cb5"

        def install
          bin.install "portal"
        end
      end
    end
  end
end
