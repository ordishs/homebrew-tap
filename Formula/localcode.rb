class Localcode < Formula
  desc "Wrapper that points the pi coding agent at the abila inference gateway"
  homepage "https://github.com/ordishs/localcode"
  url "https://github.com/ordishs/localcode/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "72b3e852d5e13d781c23478f975f97bc50f86ba6b57542a6866439ba37259f90"
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
