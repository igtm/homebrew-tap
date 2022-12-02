# typed: false
# frozen_string_literal: true

class OpenapiYupGenerator < Formula
  desc "CLI tool for generating yup definitions from openapi3.yaml"
  homepage "https://github.com/igtm/openapi-yup-generator"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.6/openapi-yup-generator_v0.0.6_x86_64-apple-darwin.tar.gz"
      sha256 "e9257542336aeb815e629df05107affc35cc7e81ce970254105db3da240f9cda"

      def install
        bin.install "openapi-yup-generator"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.6/openapi-yup-generator_v0.0.6_arm64-apple-darwin.tar.gz"
      sha256 "9bc37f12f9099eda887ac3e51cbe2f5a6a81d7e0dad15e15cb0fadab0040f0e0"

      def install
        bin.install "openapi-yup-generator"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.6/openapi-yup-generator_v0.0.6_x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ba366435a6036136dd6a0a1ec7fbf4e81a55181bd81c5e59a5a9b572f192da8"

      def install
        bin.install "openapi-yup-generator"
      end
    end
    # if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    #   url "https://github.com/igtm/openapi-yup-generator/releases/download/v0.0.6/openapi-yup-generator_v0.0.6_x86_64-unknown-linux-musl.tar.gz"
    #   sha256 "81286b9c2bb78f9b696033267e8493494dc0dba916dce304afe3e33ed9330b99"

    #   def install
    #     bin.install "openapi-yup-generator"
    #   end
    # end
  end
end
