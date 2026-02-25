class Relay < Formula
    desc "Short description of Relay"
    homepage "https://github.com/jdblackstar/relay"
    url "https://github.com/jdblackstar/relay/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "98848a70c7c5f93930e2d78f87176ea3ccb65287f053b98d460de3d10da1abd8"
    license "MIT"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      system "#{bin}/relay", "--version"
    end
  end