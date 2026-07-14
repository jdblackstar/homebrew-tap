class Pin < Formula
  desc "Small release manager for local tools"
  homepage "https://github.com/jdblackstar/pin"
  license "MIT"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.5/pin_v0.1.5_aarch64-apple-darwin.tar.gz"
      sha256 "12b5abd7c4ca75c262bef28b0c30918efc58c38916f69c902300b755896e994f"
    end
    on_intel do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.5/pin_v0.1.5_x86_64-apple-darwin.tar.gz"
      sha256 "3650ef3e4427e2d3da548e0b3cae122fe1ce45a9b0e4323ec662f05a01461a16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.5/pin_v0.1.5_x86_64-unknown-linux-musl.tar.gz"
      sha256 "3a9ee6706ea493a25a80a89ddb1008d27c21121b19af88259a48d108ef7e2aa9"
    end
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.5/pin_v0.1.5_aarch64-unknown-linux-musl.tar.gz"
      sha256 "312c642075e00317d3892980148d885d0b610d87db39d61e0fbffc6cbb2dbb5e"
    end
  end

  def install
    bin.install "pin"
  end

  test do
    system bin/"pin", "--version"
  end
end
