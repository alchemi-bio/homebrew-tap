# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "1.50.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v1.50.9/supabase_darwin_arm64.tar.gz"
      sha256 "f7e1af9452a3190e29c872bd705af375eecc52a3ba108bdd0bfebf4ade6e8e8d"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.50.9/supabase_darwin_amd64.tar.gz"
      sha256 "2411084aba4894c6a130534cdb47f7ea6c8e660a77a712c1057e1f74763295f5"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.50.9/supabase_linux_amd64.tar.gz"
      sha256 "051fe0f0f547aca90265fcc85ed18a16d4351db5b4b91d1df74a9ceb4ccf282f"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/cli/releases/download/v1.50.9/supabase_linux_arm64.tar.gz"
      sha256 "af077d5a622df6b0e8dc3c582bbd9f4712ea0d8f9bf6dde39de2319d6adf98fe"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
