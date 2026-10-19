class ClaudeLocal < Formula
  desc "Start Claude Code on a local Ollama model, with nothing written to disk"
  homepage "https://github.com/ali5ter/claude-local"
  url "https://github.com/ali5ter/claude-local/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "be71f038223a5e2a431556a9195d7c62923dfb5cb5e7416c3664bc018e7d5e61"
  license "MIT"

  depends_on "jq"
  depends_on "ali5ter/tap/pfb" => :recommended

  def install
    bin.install "claude-local.sh" => "claude-local"
  end

  test do
    assert_match "claude-local 1.", shell_output("#{bin}/claude-local --version")
  end
end
