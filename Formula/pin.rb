class Pin < Formula
  desc "Small release manager for local tools"
  homepage "https://github.com/jdblackstar/pin"
  license "MIT"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.3/pin_v0.1.3_aarch64-apple-darwin.tar.gz"
      sha256 "25a904632b28e31ecf3e3658b5cdf5a735f50d1bc353acaa2909f672c35c4e66"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.3/pin_v0.1.3_x86_64-unknown-linux-musl.tar.gz"
      sha256 "d1489fa502d33bdeaf054980c50b39cfb6d23e7ed5a58776d3072472e3c43050"
    end
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.3/pin_v0.1.3_aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9ceb5bb0a1db88771600687780e9e7caa1b5923f388a04ef5f738a289e36a88"
    end
  end

  def install
    bin.install "pin"
  end

  test do
    system bin/"pin", "--help"
  end
end
