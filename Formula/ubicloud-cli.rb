class UbicloudCli < Formula
  desc "Ubicloud CLI Tool"
  homepage "https://github.com/ubicloud/homebrew-ubicloud-cli"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/ubicloud/cli/releases/download/1.0.0/ubi-darwin-arm64-1.0.0.tar.gz"
    sha256 "d5ee331198b95e8f1c475a818383d55ce4114e20fd6007e7ff275a9d9567e82a"
  else
    url "https://github.com/ubicloud/cli/releases/download/1.0.0/ubi-darwin-amd64-1.0.0.tar.gz"
    sha256 "d7d25f4d5cc115cdcd4c9ea3fcfaf817d18824ff007d62bf75ce005ca5f0f8fc"
  end

  def install
    bin.install "ubi" => "ubicloud-cli"
  end

  test do
    system "#{bin}/ubicloud-cli", "--version"
  end
end
