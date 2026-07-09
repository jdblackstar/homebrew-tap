class Pin < Formula
  desc "Small release manager for local tools"
  homepage "https://github.com/jdblackstar/pin"
  license "MIT"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.4/pin_v0.1.4_aarch64-apple-darwin.tar.gz"
      sha256 "b4fc032d5095dcbdbda7dbb90282438193b7fe552a6eb22763b4321b89d76102"
    end
    on_intel do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.4/pin_v0.1.4_x86_64-apple-darwin.tar.gz"
      sha256 "f3c2c7adebc14d46a3bbd0f41a928d3e70061592074905bc1a7f5021d91d9aba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.4/pin_v0.1.4_x86_64-unknown-linux-musl.tar.gz"
      sha256 "189f71debd4a84c4b89fdb5947dd17945ee85ef2aaddae6e5ec5ad1f5a319281"
    end
    on_arm do
      url "https://github.com/jdblackstar/pin/releases/download/v0.1.4/pin_v0.1.4_aarch64-unknown-linux-musl.tar.gz"
      sha256 "c6495c70ac39309f2c32dfebc512ffa2fb52ef01f0b3da4539b62bd40b88519d"
    end
  end

  def install
    bin.install "pin"
  end

  test do
    system bin/"pin", "--version"
  end
end
