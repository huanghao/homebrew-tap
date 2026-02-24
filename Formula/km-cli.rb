class KmCli < Formula
  desc "CLI tool for KM document operations"
  homepage "https://github.com/huanghao/mt-cli"
  url "ssh://git@github.com/huanghao/mt-cli.git",
      using: :git,
      tag: "v0.1.0",
      revision: "e285042f8da93f50ef351f034dfcad4a98cb4222"
  version "0.1.0"

  depends_on "go" => :build

  def install
    cd "tools/km-cli" do
      ldflags = %W[
        -s -w
        -X mt-cli/tools/km-cli/internal/version.Version=#{version}
        -X mt-cli/tools/km-cli/internal/version.Commit=#{Utils.git_short_head}
      ]
      system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/km-cli"
    end
  end

  test do
    assert_match "km-cli", shell_output("#{bin}/km-cli version")
  end
end
