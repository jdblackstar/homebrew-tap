class Relay < Formula
    desc "Short description of Relay"
    homepage "https://github.com/jdblackstar/relay"
    url "https://github.com/jdblackstar/relay/archive/refs/tags/v0.1.2.tar.gz"
    sha256 "45ed2f545b8da815494fd337027dbc5a2cb1fb96cda52ed0a9fdb41d61248b1c"
    license "MIT"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      system "#{bin}/relay", "--version"
    end
  end