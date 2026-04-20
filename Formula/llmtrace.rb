class Llmtrace < Formula
  desc "Per-inference telemetry proxy for local LLM servers (oMLX, mlx-lm)"
  homepage "https://github.com/ordishs/llmtrace"
  url "https://github.com/ordishs/llmtrace/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ad78a4bb05be500cb13ff222b7bc85b9704e9631fe4a68c066e85d58de2e1588"
  license "MIT"
  head "https://github.com/ordishs/llmtrace.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/llmtrace"
  end

  def post_install
    (var/"llmtrace").mkpath
    (var/"log").mkpath
  end

  service do
    run [
      opt_bin/"llmtrace", "serve",
      "--port", "8080",
      "--upstream", "http://localhost:8000",
      "--db", var/"llmtrace/traces.db"
    ]
    keep_alive successful_exit: false
    working_dir var/"llmtrace"
    log_path var/"log/llmtrace.log"
    error_log_path var/"log/llmtrace.log"
  end

  test do
    assert_match "Per-inference telemetry proxy",
      shell_output("#{bin}/llmtrace --help")
  end
end
