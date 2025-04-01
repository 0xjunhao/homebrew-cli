class Ubi < Formula
  desc "Ubicloud CLI Tool"
  homepage "https://github.com/ubicloud/homebrew-cli"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/ubicloud/cli/releases/download/1.0.0/ubi-darwin-arm64-1.0.0.tar.gz"
    sha256 "2b9d20707fbe95ad44a275011256630d5669f20d95c907e95bab813e560bc696"
  else
    url "https://github.com/ubicloud/cli/releases/download/1.0.0/ubi-darwin-amd64-1.0.0.tar.gz"
    sha256 "4f541400e9f111a01d06b0b5666ed82a10b7b71c421fcce5170b82814f437f21"
  end

  def install
    bin.install "ubi"
  end
end
