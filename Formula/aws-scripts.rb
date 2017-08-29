
class AwsScripts < Formula
  desc "Misc scripts for working with AWS"
  homepage "https://github.com/ceaser/aws-scripts/"
  url "https://github.com/ceaser/aws-scripts/releases/download/v1.0/aws-scripts-1.0.tar.gz"
  sha256 "b8d424ac063609483a8cf2b38b67143adbb18bbb27e89b5703724cfcadad7355"

  depends_on "jq" => :run
  depends_on "netcat" => :run
  depends_on "awscli" => :run

  def install
    bin.install "bin/dev-up"
    bin.install "bin/dev-down"
  end

  test do
    system "dev-up configure && test -f #{testpath}/.dev-up/config"
  end
end
