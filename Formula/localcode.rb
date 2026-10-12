class Localcode < Formula
  desc "Wrapper that points the pi coding agent at the abila inference gateway"
  homepage "https://github.com/ordishs/localcode"
  url "https://github.com/ordishs/localcode/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "83bab54d2fcf7091da54438ef32a41f79c00a14f62d246478e1da505af67cd01"
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
