class Relay < Formula
  desc "Sync commands, skills, and agents across AI coding tools"
  homepage "https://github.com/jdblackstar/relay"
  license "MIT"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.4/relay_v0.2.4_aarch64-apple-darwin.tar.gz"
      sha256 "3358f531b7f9aa380c57cf75528da9da4e41c87867d0a767649d166bbeea0012"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.4/relay_v0.2.4_x86_64-unknown-linux-musl.tar.gz"
      sha256 "37fb0c2ba783e846a11f1d6ea41ba6ed7b9e445c16a5b8ed4a71d9db5bdabe83"
    end
    on_arm do
      url "https://github.com/jdblackstar/relay/releases/download/v0.2.4/relay_v0.2.4_aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd5fe70fa9818a9ac85ff5412b20ba3a95e25b947ec8c64d5821662949a8186e"
    end
  end

  def install
    bin.install "relay"
  end

  test do
    system bin/"relay", "--version"
  end
end
