class Pfb < Formula
  desc "Pretty feedback for Bash scripts — lightweight terminal UI components"
  homepage "https://github.com/ali5ter/pfb"
  url "https://github.com/ali5ter/pfb/archive/refs/tags/v2.5.5.tar.gz"
  sha256 "733c7dc0e66bd6c127a63269c19a1e0f8d742d88637b933cee0d997e34cd8b45"
  license "MIT"

  def install
    bin.install "pfb.sh" => "pfb"
  end

  test do
    system "bash", "-c", "#{bin}/pfb info 'test'"
  end
end
