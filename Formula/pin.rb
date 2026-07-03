class Pin < Formula
  desc "Small release manager for local tools"
  homepage "https://github.com/jdblackstar/pin"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.0/pin_v0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "120054b2eab8426f883e897670e7f555bdd99cee572c18f354d57c83ed3f443b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.0/pin_v0.1.0_x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc2a0ab7454d73e76fc2740e78f6965515fa793b50b58fb7a255d290b22e3f50"
    end
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.0/pin_v0.1.0_aarch64-unknown-linux-musl.tar.gz"
      sha256 "8aa3cdb0e73dcd1d3c3b70a0411b986b21aefd6e8d0c3ba56f103042b962a478"
    end
  end

  def install
    bin.install "pin"
  end

  test do
    system bin/"pin", "--help"
  end
end
