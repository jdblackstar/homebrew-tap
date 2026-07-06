class Pin < Formula
  desc "Small release manager for local tools"
  homepage "https://github.com/jdblackstar/pin"
  license "MIT"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.2/pin_v0.1.2_aarch64-apple-darwin.tar.gz"
      sha256 "6a6b88069f0a486840c2f02893b4e1ade7a20debb1069fd05ae74a12d0ecf0ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.2/pin_v0.1.2_x86_64-unknown-linux-musl.tar.gz"
      sha256 "87bd2e8aed08ef73066b7dd02cf1fb3eb12d5edd85c7a73d322a1e59aab83b46"
    end
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.2/pin_v0.1.2_aarch64-unknown-linux-musl.tar.gz"
      sha256 "3cfc45d48feca619b1542f976de4b823560fa756a77b3815e2fb29bd56cccb2f"
    end
  end

  def install
    bin.install "pin"
  end

  test do
    system bin/"pin", "--help"
  end
end
