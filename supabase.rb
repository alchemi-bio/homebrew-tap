# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
    desc "Supabase CLI"
    homepage "https://supabase.com"
    version "1.68.6"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/supabase/cli/releases/download/v1.68.6/supabase_darwin_arm64.tar.gz"
        sha256 "febde6802659676656a85f715224cbc6462adf2e6775f98079ef172a5d07182b"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/cli/releases/download/v1.68.6/supabase_darwin_amd64.tar.gz"
        sha256 "fd1ab4a3f91a86ef999a1e1e05ffafbe92e55ab6552b7d4a2a3bb6142ff6ee06"
  
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
        url "https://github.com/supabase/cli/releases/download/v1.68.6/supabase_linux_arm64.tar.gz"
        sha256 "440885c87d94eca5f539fe98df595975787427c4c7797c34fb3a1817284a4e6b"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/cli/releases/download/v1.68.6/supabase_linux_amd64.tar.gz"
        sha256 "0df607c880318c551c43ffadd9bd5a32e477c1b7fd5c2e6a5088a36a9a8cec9a"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
    end
  end