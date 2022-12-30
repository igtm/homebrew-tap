# typed: false
# frozen_string_literal: true

class OpenapiYupGenerator < Formula
  desc "CLI tool for generating yup definitions from openapi3.yaml"
  homepage "https://github.com/igtm/openapi-yup-generator"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.7/openapi-yup-generator_v0.0.7_x86_64-apple-darwin.tar.gz"
      sha256 "29addc364ae1be35072dfad68b5a88b1f20e388d721ae98dd6aa341166d46078"

      def install
        bin.install "openapi-yup-generator"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.7/openapi-yup-generator_v0.0.7_aarch64-apple-darwin.tar.gz"
      sha256 "c22a7d9120c8ff04ecd355a244f937ec966c5db01d4db0b2def8b08eeb675090"

      def install
        bin.install "openapi-yup-generator"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.7/openapi-yup-generator_v0.0.7_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6cbb1a290fcee8de760d5f651801d80fb5984a85a433d944cbbbbc15d3d9113a"

      def install
        bin.install "openapi-yup-generator"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.7/openapi-yup-generator_v0.0.7_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6cd4754bfcbd32b2d0b75f1fc61ad98a53c17c3721638faca5baa7e2774e934"

      def install
        bin.install "openapi-yup-generator"
      end
    end
  end
end
