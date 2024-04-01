# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SupabaseBeta < Formula
  desc "Supabase CLI (Beta)"
  homepage "https://supabase.com"
  version "1.153.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v1.153.1/supabase_darwin_arm64.tar.gz"
      sha256 "6462f6376021be6b95a676d23014d1fc90f4fda7eb4ef724da5f2178c8b9a537"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.153.1/supabase_darwin_amd64.tar.gz"
      sha256 "4994318046a612dfaafaca5bba47026ec14d7ffbe12ac8162f852a8ede57cb1a"

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
      url "https://github.com/supabase/cli/releases/download/v1.153.1/supabase_linux_arm64.tar.gz"
      sha256 "f0c7160b6c846ae953b1b4c1553b4664c57a24e8fb14e86f4c6ceb397ce77003"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.153.1/supabase_linux_amd64.tar.gz"
      sha256 "15d0cbbb5b227e2a691aead2794a2bfd76bf95a24b7466f20c64c6dc8b560fe1"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
