class Localcode < Formula
  desc "Wrapper that points the pi coding agent at the abila inference gateway"
  homepage "https://github.com/ordishs/localcode"
  url "https://github.com/ordishs/localcode/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "bbed9b930a12b2849c06ffadf84db3e4ebf1fe3c52ff7ebb916298dbc97ab309"
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
