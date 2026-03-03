class Attn < Formula
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"
  license "MIT"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64"
      sha256 "a2d6a376b2b743cb5c7203cc08ca36017ac85b0a41d0beacd25193fad17fb8c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-linux-x64"
      sha256 "287778d816dfca6b3eb0265bbdf4bc8ad58003edce3a501fc6865ed9bd719b09"
    end
  end

  def install
    downloaded = Dir["attn-v*"].first
    if downloaded
      mv downloaded, "attn"
    end
    chmod 0755, "attn"
    bin.install "attn"
  end

  test do
    assert_match "markdown viewer", shell_output("#{bin}/attn --help")
  end
end
