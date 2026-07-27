class Relay < Formula
  desc "Sync commands, skills, and agents across AI coding tools"
  homepage "https://github.com/jdblackstar/relay"
  license "MIT"
  version "0.2.6"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.6/relay_v0.2.6_aarch64-apple-darwin.tar.gz"
      sha256 "d7e8b7fcf50c9c10baff52e2d0e44f220767a665dece365662fcf5e5379b66d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.6/relay_v0.2.6_x86_64-unknown-linux-musl.tar.gz"
      sha256 "a0a0aecbefaee5c13f4b3025af696a3a3f28b3254879518035177dc706ad34ea"
    end
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.6/relay_v0.2.6_aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d7ad75b586944effd92700e98b929f35c02ccfb1eddd2ea7782e80a3cd3242b"
    end
  end

  def install
    bin.install "relay"
  end

  test do
    system bin/"relay", "--version"
  end
end
