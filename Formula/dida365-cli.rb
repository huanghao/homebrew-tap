class Dida365Cli < Formula
  desc "Dida365 CLI"
  homepage "https://github.com/huanghao/dida365-cli"
  version "0.0.2"

  on_macos do
    on_arm do
      url "https://github.com/huanghao/dida365-cli/releases/download/v0.0.2/dida365-cli_0.0.2_darwin_arm64.tar.gz"
      sha256 "5d621d4b368bb78c4b097448805732f413f34909f0285342370ff1f371cb9336"
    end

    on_intel do
      url "https://github.com/huanghao/dida365-cli/releases/download/v0.0.2/dida365-cli_0.0.2_darwin_amd64.tar.gz"
      sha256 "51d03e24a5234d2a815d7b8ca3717f22aeb71f1062cc738e5a5ced1d8e4a0e5e"
    end
  end

  def install
    bin.install "dida365-cli"
  end

  test do
    assert_match "Dida365 CLI", shell_output("#{bin}/dida365-cli --help")
  end
end
