# typed: false
# frozen_string_literal: true

class Share < Formula
  desc "Fast, zero-configuration terminal LAN file server with live sync and QR code"
  homepage "https://github.com/rootagi/share"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/rootagi/share/releases/download/v#{version}/share-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "58ccedb989ad9c3500ad5e99ca019526f2e4f86d2c7891697b7ce08888641d41"
    end

    on_intel do
      url "https://github.com/rootagi/share/releases/download/v#{version}/share-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9fb13db56e0cec821d0124e616220f12c3c52f5de1af8385d13418c90ef51d55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rootagi/share/releases/download/v#{version}/share-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db97b83a34fb6e4ba0cc2bffe4bbdb3bbbce9b5ff3ce3f102e6984e421102cc5"
    end

    on_intel do
      url "https://github.com/rootagi/share/releases/download/v#{version}/share-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfe54a368221ad75d7a4f6420b1bd675e2a4818bfbd8c8fed8370b38877d1652"
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
