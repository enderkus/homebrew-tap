class Zabterm < Formula
  desc "Beautiful terminal UI for Zabbix"
  homepage "https://github.com/enderkus/zabterm"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.2/zabterm-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "32d0670454a73d42f637ba9ec9743d54f428612aeaf2710dc0781cb8617918c1"
    end
    on_intel do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.2/zabterm-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "2ee19bd19acdcd23039681f630678aec990dce41f23144b85f448e4e01ce0d0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.2/zabterm-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4a9eab1df77f74e9740e747f0ef4b0baa082f5eb02614ab62812f10e2000e0f"
    end
    on_intel do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.2/zabterm-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5b947ff7227f805659fea4a7eb035d67676ea8d37f5674cacad98602fcead08"
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
