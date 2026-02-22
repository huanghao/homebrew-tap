class Dida < Formula
  desc "Dida365 CLI"
  homepage "https://github.com/huanghao/dida365-cli"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/huanghao/dida365-cli/releases/download/v0.0.1/dida_darwin_arm64.tar.gz"
      sha256 "e505b1a9bd049b2b412bc7991e70518bd3ea3e8217cc48fcec88b3b1460632f1"
    end

    on_intel do
      url "https://github.com/huanghao/dida365-cli/releases/download/v0.0.1/dida_darwin_amd64.tar.gz"
      sha256 "4130b51ceb5fdfabcdc48e4e5ae2cc8dd87b36951ef18f00b792c0964791502f"
    end
  end

  def install
    bin.install "dida"
  end

  test do
    assert_match "Dida365 CLI", shell_output("#{bin}/dida --help")
  end
end
