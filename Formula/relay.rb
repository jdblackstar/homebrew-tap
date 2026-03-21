class Relay < Formula
  desc "Sync commands, skills, and agents across AI coding tools"
  homepage "https://github.com/jdblackstar/relay"
  license "MIT"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.2/relay_v0.2.2_aarch64-apple-darwin.tar.gz"
      sha256 "acd378164781f5b967e5ebe2127ce4c873a6f2b17d9587e70dab8b4464a79efc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.2/relay_v0.2.2_x86_64-unknown-linux-musl.tar.gz"
      sha256 "95b2161e5fe851437f730d5824d9e53df06fbc024d14f67cb6231f6ba5fe4f2b"
    end
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.2/relay_v0.2.2_aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e86a02786e5f914495bbb9689f54e66d87cf10b6dc4ead33f30787aa7abdd09"
    end
  end

  def install
    bin.install "relay"
  end

  test do
    system bin/"relay", "--version"
  end
end
