class Pfb < Formula
  desc "Pretty feedback for Bash scripts — lightweight terminal UI components"
  homepage "https://github.com/ali5ter/pfb"
  url "https://github.com/ali5ter/pfb/archive/refs/tags/v2.5.3.tar.gz"
  sha256 "80a693b2b83157868a7be4fb3332cdc9bced4bf740ab6bce6d3b16a431695628"
  license "MIT"

  def install
    bin.install "pfb.sh" => "pfb"
  end

  test do
    system "bash", "-c", "#{bin}/pfb info 'test'"
  end
end
