
class AwsScripts < Formula
  desc "Misc scripts for working with AWS"
  homepage "https://github.com/ceaser/aws-scripts/"
  url "https://github.com/ceaser/aws-scripts/releases/download/v1.1/aws-scripts-1.1.tar.gz"
  sha256 "bde3e246485aadea3a0639ac338763ac0a369b90a6f8584bc64d69ba0e8015d8"

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
