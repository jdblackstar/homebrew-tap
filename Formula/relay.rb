class Relay < Formula
  desc "Sync commands, skills, and agents across AI coding tools"
  homepage "https://github.com/jdblackstar/relay"
  license "MIT"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.5/relay_v0.2.5_aarch64-apple-darwin.tar.gz"
      sha256 "63c604abfe2591997b6b1f443b7d67f6ab7d4590d84bf70f345e0fa32113acdc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.5/relay_v0.2.5_x86_64-unknown-linux-musl.tar.gz"
      sha256 "1338e6262424c77a633e303d96db23c9884217bcd19887ac874918a021fdc4e7"
    end
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.5/relay_v0.2.5_aarch64-unknown-linux-musl.tar.gz"
      sha256 "ab2d3a3250d98d15f513a8caab6552addaf71767f0a6d8444a71b762127b968e"
    end
  end

  def install
    bin.install "relay"
  end

  test do
    system bin/"relay", "--version"
  end
end
