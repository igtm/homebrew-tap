# typed: false
# frozen_string_literal: true

class OpenapiYupGenerator < Formula
  desc "CLI tool for generating yup definitions from openapi3.yaml"
  homepage "https://github.com/igtm/openapi-yup-generator"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.7/openapi-yup-generator_v0.0.7_x86_64-apple-darwin.tar.gz"
      sha256 "f249d5c6275ff04686c7aa41db38fbeeaee1be81cf125354676c31bdb6fca324"

      def install
        bin.install "openapi-yup-generator"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.7/openapi-yup-generator_v0.0.7_aarch64-apple-darwin.tar.gz"
      sha256 "9a26bb55a46bae78815ddf6a5399573bb3ced7cc606bceed923965d06eb56243"

      def install
        bin.install "openapi-yup-generator"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.7/openapi-yup-generator_v0.0.7_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72727b757ac2efdeafa8bccf697162f07e47221739353670e4c75ae785898289"

      def install
        bin.install "openapi-yup-generator"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.7/openapi-yup-generator_v0.0.7_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "187662783fefa900a3befeaeaade7a0e10f2682c85be91782fc9998ca2b6ccd0"

      def install
        bin.install "openapi-yup-generator"
      end
    end
  end
end
