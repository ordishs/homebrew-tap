class Localcode < Formula
  desc "Wrapper that points the pi coding agent at the abila inference gateway"
  homepage "https://github.com/ordishs/localcode"
  url "https://github.com/ordishs/localcode/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "d93f118aa743a0ceb81b82139fd64014512b39088f7463e2e9b7ffd040cdfc82"
  license :cannot_represent
  head "https://github.com/ordishs/localcode.git", branch: "main"

  depends_on "gh"
  depends_on "jq"
  depends_on "pi-coding-agent"

  def install
    libexec.install "bin", "config", "extensions"
    bin.install_symlink libexec/"bin/localcode"
  end

  test do
    assert_match "localcode #{version}", shell_output("#{bin}/localcode version")
  end
end
