class ClaudeLocal < Formula
  desc "Start Claude Code on a local Ollama model, with nothing written to disk"
  homepage "https://github.com/ali5ter/claude-local"
  url "https://github.com/ali5ter/claude-local/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "ee5e1bbd8dec6b66cf38fde790f9fa0fdfc449d5873f2b6fd86cff38a6cd77df"
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
