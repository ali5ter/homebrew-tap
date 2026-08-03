class Pfb < Formula
  desc "Pretty feedback for Bash scripts — lightweight terminal UI components"
  homepage "https://github.com/ali5ter/pfb"
  url "https://github.com/ali5ter/pfb/archive/refs/tags/v2.6.1.tar.gz"
  sha256 "f3fa0cf7a72fa34928c7638baa8a2a629685a881f184779f5566efb8894ab17c"
  license "MIT"

  def install
    bin.install "pfb.sh" => "pfb"
  end

  test do
    system "bash", "-c", "#{bin}/pfb info 'test'"
  end
end
