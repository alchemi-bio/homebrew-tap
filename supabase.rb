# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.io"
  version "0.7.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v0.7.0/supabase_0.7.0_darwin_amd64.tar.gz"
      sha256 "3c6c22b4e24745e492c21b0a3d4df2a25b7c4718cc658d90be7edd0b5844c945"
    end
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v0.7.0/supabase_0.7.0_darwin_arm64.tar.gz"
      sha256 "1a6ea67a1966dc24783ebb27394f4db5350fba59440f4089a2474e2b87d1eb2b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v0.7.0/supabase_0.7.0_linux_amd64.tar.gz"
      sha256 "780733ee3d25ff053e4871cab8d4a44aec3f0c94645d47bc00bd520333fbec4b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/cli/releases/download/v0.7.0/supabase_0.7.0_linux_arm64.tar.gz"
      sha256 "7b9479d98aa0b670a5df7ad8fe69a7c6b7dbb450e8e089419858357d884fce23"
    end
  end

  def install
    bin.install "supabase"
  end
end
