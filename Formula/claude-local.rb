class ClaudeLocal < Formula
  desc "Start Claude Code on a local Ollama model, with nothing written to disk"
  homepage "https://github.com/ali5ter/claude-local"
  url "https://github.com/ali5ter/claude-local/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "717a16e3e17475247613ca34f7cced9956e17c8e84aaa3d52c190a85517ca9c7"
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
