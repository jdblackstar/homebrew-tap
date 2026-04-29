class Relay < Formula
  desc "Sync commands, skills, and agents across AI coding tools"
  homepage "https://github.com/jdblackstar/relay"
  license "MIT"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.3/relay_v0.2.3_aarch64-apple-darwin.tar.gz"
      sha256 "814969cd3577b9e3e94f469b610962dcd8a374c18748aef9c03ce187a5596b63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.3/relay_v0.2.3_x86_64-unknown-linux-musl.tar.gz"
      sha256 "50172b331856f7c87136218b46f08b34d98dfcc3e0b29dcd18871803d77672dd"
    end
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.3/relay_v0.2.3_aarch64-unknown-linux-musl.tar.gz"
      sha256 "c68d8fa7f422738ae56df7e854cb30911e25bfc8e0e092bcf478ecf4ee6beb4c"
    end
  end

  def install
    bin.install "relay"
  end

  test do
    system bin/"relay", "--version"
  end
end
