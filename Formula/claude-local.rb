class ClaudeLocal < Formula
  desc "Start Claude Code on a local Ollama model, with nothing written to disk"
  homepage "https://github.com/ali5ter/claude-local"
  url "https://github.com/ali5ter/claude-local/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "2c43f936e7104edc48d434b2b180432e8f4831391ce92e63eea5cf26c2d65d2c"
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
