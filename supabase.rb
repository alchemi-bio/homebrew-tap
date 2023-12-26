# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
    desc "Supabase CLI"
    homepage "https://supabase.com"
    version "1.127.3"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/supabase/cli/releases/download/v1.127.3/supabase_darwin_arm64.tar.gz"
        sha256 "999cbc7d65794dc01dc15ca9abfb71b00cf391d145ff48afcbe2f1ea1b595ecf"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/cli/releases/download/v1.127.3/supabase_darwin_amd64.tar.gz"
        sha256 "402c17ff648cbcc5e18c0fdc5ec54329c8b0530a10b3769c414a0c57f91f7711"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/supabase/cli/releases/download/v1.127.3/supabase_linux_arm64.tar.gz"
        sha256 "17d0f64786929036bab817dcdbbe187fe3003d50b9d2d5d74d679852111acbd0"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/cli/releases/download/v1.127.3/supabase_linux_amd64.tar.gz"
        sha256 "8f75d50b094cc20437bc1fb089f90482f433a9a8cd6693ee86c9d701b2b1f8d4"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
    end
  end