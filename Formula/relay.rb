class Relay < Formula
    desc "Short description of Relay"
    homepage "https://github.com/jdblackstar/relay"
    url "https://github.com/jdblackstar/relay/archive/refs/tags/v0.1.3.tar.gz"
    sha256 "3434261fc62d12691b4c2ca00978fb23cf7208219e119a28ee6fd82bf358e189"
    license "MIT"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      system "#{bin}/relay", "--version"
    end
  end