class Relay < Formula
  desc "Sync commands, skills, and agents across AI coding tools"
  homepage "https://github.com/jdblackstar/relay"
  license "MIT"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.1/relay_v0.2.1_aarch64-apple-darwin.tar.gz"
      sha256 "88049174541a43423d8c7dd13076e08e01924a4c62115aeb7d7295c498ead4cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.1/relay_v0.2.1_x86_64-unknown-linux-musl.tar.gz"
      sha256 "b9b17dd11c48f466e0feb737db98ea6b863ad23cfeed0c5d99703637c6cc5505"
    end
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.1/relay_v0.2.1_aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb13de9b6ec9a709ef04461caf6b1f8950652a3fe0944062471057c2a4b22e02"
    end
  end

  def install
    bin.install "relay"
  end

  test do
    system bin/"relay", "--version"
  end
end
