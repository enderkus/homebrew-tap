class Zabterm < Formula
  desc "Beautiful terminal UI for Zabbix"
  homepage "https://github.com/enderkus/zabterm"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.0/zabterm-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "78b2e1502e77890b480902a058d88c9537ba58eea394744ada1b914b7af11b6f"
    end
    on_intel do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.0/zabterm-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b816a178169cd8f131133aff1fd77a6dff5286a5a01559b3e00d54f3e16c0ede"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.0/zabterm-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0a3a9f638c6966ba205210fa1bd8e8b4febfc6bcb0e7e844b4d6617389b0d50"
    end
    on_intel do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.0/zabterm-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8588d3d71c7d62759f7247e9c369c49c88aa90a07c9f878dfcf1eeb99d0cb7ce"
    end
  end

  def install
    bin.install "zabterm"
  end

  def caveats
    <<~EOS
      Create a starter config, then add your Zabbix URL and API token:
        zabterm init
        zabterm check
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zabterm --version")
  end
end
