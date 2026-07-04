class Pin < Formula
  desc "Small release manager for local tools"
  homepage "https://github.com/jdblackstar/pin"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.1/pin_v0.1.1_aarch64-apple-darwin.tar.gz"
      sha256 "2a3ec45a50b79c1ccdb52ca62e80c4b5ec610c1bdb75e2db7351aaa993b02803"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.1/pin_v0.1.1_x86_64-unknown-linux-musl.tar.gz"
      sha256 "5afa8be0385344eb48aaf8a7315dc47252167e488ab6b8d9adafe6a600f09254"
    end
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.1/pin_v0.1.1_aarch64-unknown-linux-musl.tar.gz"
      sha256 "dff22d54b9d5e458d79659e01683ebc7bbd80b8ded539fea77485ae0941381d0"
    end
  end

  def install
    bin.install "pin"
  end

  test do
    system bin/"pin", "--help"
  end
end
