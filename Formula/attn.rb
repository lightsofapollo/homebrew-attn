class Attn < Formula
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"
  license "MIT"
  version "0.2.0"

  # Run ./update.sh after a release to fetch real SHA256 values
  on_macos do
    on_arm do
      url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64"
      sha256 "UPDATE_WITH_REAL_SHA256"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-linux-x64"
      sha256 "UPDATE_WITH_REAL_SHA256"
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
