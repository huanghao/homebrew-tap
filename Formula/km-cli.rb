class KmCli < Formula
  desc "CLI tool for KM document operations"
  homepage "https://github.com/huanghao/mt-cli"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/huanghao/mt-cli/releases/download/v0.1.0/km-cli_v0.1.0_darwin_arm64.tar.gz"
      sha256 "dabd8a44a7f7e15588ba36374fcf778142c22b970db74ca913743ef79493099a"
    else
      url "https://github.com/huanghao/mt-cli/releases/download/v0.1.0/km-cli_v0.1.0_darwin_amd64.tar.gz"
      sha256 "b865770418db0e30ee3c78e98755d8a503f4faac55b85f40aa9eb726372ec7e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/huanghao/mt-cli/releases/download/v0.1.0/km-cli_v0.1.0_linux_arm64.tar.gz"
      sha256 "4ce1507788ff09575f3ae35ff6eb190bbfae0da1d6fd9d84ca703df1288f68d2"
    else
      url "https://github.com/huanghao/mt-cli/releases/download/v0.1.0/km-cli_v0.1.0_linux_amd64.tar.gz"
      sha256 "03c0cb9806a911d7e8ef85538545848b73d36e3a5d8ee9bae82574d382c9469d"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "km-cli_darwin_arm64" => "km-cli"
    elsif OS.mac?
      bin.install "km-cli_darwin_amd64" => "km-cli"
    elsif Hardware::CPU.arm?
      bin.install "km-cli_linux_arm64" => "km-cli"
    else
      bin.install "km-cli_linux_amd64" => "km-cli"
    end
  end

  test do
    assert_match "km-cli", shell_output("#{bin}/km-cli version")
  end
end
