class ClaudeLocal < Formula
  desc "Start Claude Code on a local Ollama model, with nothing written to disk"
  homepage "https://github.com/ali5ter/claude-local"
  url "https://github.com/ali5ter/claude-local/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "675a8cb00f19db8fa29c55072044b9ed620b4ba90396524f2e4fe9a9d2d593d7"
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
