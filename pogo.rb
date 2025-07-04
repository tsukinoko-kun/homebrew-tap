# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pogo < Formula
  desc "Centralized version control system"
  homepage "https://github.com/tsukinoko-kun/pogo"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tsukinoko-kun/pogo/releases/download/v0.0.1/pogo_0.0.1_darwin_amd64.tar.gz"
      sha256 "36d7b350fa9a16f20f9206631ebe63b1fa92da889ae56a7cdf059dc8d4232076"

      def install
        bin.install "pogo"
      end
    end
    on_arm do
      url "https://github.com/tsukinoko-kun/pogo/releases/download/v0.0.1/pogo_0.0.1_darwin_arm64.tar.gz"
      sha256 "088c4f7bb3689f32f86be5a4f727e21846af467ec0cf26840207ae49e1484706"

      def install
        bin.install "pogo"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/pogo/releases/download/v0.0.1/pogo_0.0.1_linux_amd64.tar.gz"
        sha256 "d8ba20b8d34528e050f088198c204eeed68f4d818b0d9c588d6af0d4cd89ac32"

        def install
          bin.install "pogo"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tsukinoko-kun/pogo/releases/download/v0.0.1/pogo_0.0.1_linux_arm64.tar.gz"
        sha256 "81f6a965f6cdb1417c6be7defc189a6f054ee8eaec9bc83398928ba95635fa42"

        def install
          bin.install "pogo"
        end
      end
    end
  end
end
