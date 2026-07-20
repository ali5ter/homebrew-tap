class Pfb < Formula
  desc "Pretty feedback for Bash scripts — lightweight terminal UI components"
  homepage "https://github.com/ali5ter/pfb"
  url "https://github.com/ali5ter/pfb/archive/refs/tags/v2.6.0.tar.gz"
  sha256 "caf69b9db75712b60c49ba7330fde40d0ab3700c5cdf2d9d85b58d67aff0c20b"
  license "MIT"

  def install
    bin.install "pfb.sh" => "pfb"
  end

  test do
    system "bash", "-c", "#{bin}/pfb info 'test'"
  end
end
