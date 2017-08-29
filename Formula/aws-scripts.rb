
class AwsScripts < Formula
  desc "Misc scripts for working with AWS"
  homepage "https://github.com/ceaser/aws-scripts/"
  url "https://github.com/ceaser/aws-scripts/archive/v1.1.tar.gz"
  sha256 "72db91ccb01fc2eeb65c27aae005b423b01bc8c2a007a2962b16df84b3d1ab25"
  revision 2

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
