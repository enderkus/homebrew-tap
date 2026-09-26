class Zabterm < Formula
  desc "Beautiful terminal UI for Zabbix"
  homepage "https://github.com/enderkus/zabterm"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.1/zabterm-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "725df4cb6e016de691b6c000b3b060582b005952762dc46cc33ac1b5f3090a97"
    end
    on_intel do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.1/zabterm-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "e04ed75509a7e6e6da5a1f6f618a67322ce54065d7633f1b8d072020341517c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.1/zabterm-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4948182bf2651211af89da9baad506ebe6f3166fd1085ed68d9941524f4877ba"
    end
    on_intel do
      url "https://github.com/enderkus/zabterm/releases/download/v0.1.1/zabterm-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b911a595c68d27b80c968c1138d389241b73e03f1ada82866d949e01f25e8ad"
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
