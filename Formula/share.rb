# typed: false
# frozen_string_literal: true

class Share < Formula
  desc "Fast, zero-configuration terminal LAN file server with live sync and QR code"
  homepage "https://github.com/rootagi/share"
  version "1.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/rootagi/share/releases/download/v#{version}/share-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "57f85622c7ba47535263f9fc3cd5f62a79143a24dd9f164a2b45c2f14b5f0be3"
    end

    on_intel do
      url "https://github.com/rootagi/share/releases/download/v#{version}/share-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "590fc0237e180cbf30b243597a7a2ba0b029f7d2519bfae0d47172fb31427b88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rootagi/share/releases/download/v#{version}/share-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2efac538bce3dd7fda88da4d06acae536da5774ec68b333c11116d485ee4a75d"
    end

    on_intel do
      url "https://github.com/rootagi/share/releases/download/v#{version}/share-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ae8ea12bf0c9c473d5faa1f072ba8545452bb112f92c3b2cc6dd45e7244fd98"
    end
  end

  def install
    bin.install "share"
    bash_completion.install "completions/share.bash" => "share"
    zsh_completion.install "completions/_share" => "_share"
    fish_completion.install "completions/share.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/share --version")
    assert_match "Usage: share", shell_output("#{bin}/share --help")
  end
end
