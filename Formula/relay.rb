class Relay < Formula
  desc "Sync commands, skills, and agents across AI coding tools"
  homepage "https://github.com/jdblackstar/relay"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.0/relay_v0.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "5794550e153cbc23885c8b6af8fc422089567913ef187d881ff4dec1f9e59b04"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.0/relay_v0.2.0_x86_64-unknown-linux-musl.tar.gz"
      sha256 "6a4611533cb3cdd3ec30bd56833cb8ba9656b47bf84a975f780116dc83883077"
    end
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.0/relay_v0.2.0_aarch64-unknown-linux-musl.tar.gz"
      sha256 "03bbde8b27d46a51f89f4dec7b586e27f075926218db1ff818c1befc1f117e7c"
    end
  end

  def install
    bin.install "relay"
  end

  test do
    system bin/"relay", "--version"
  end
end
