class Attn < Formula
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64"
      sha256 "9d9c9bb4a404661ef655040bd774556321aedebce4758f2a1761c25fbd9a7d1e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-linux-x64"
      sha256 "917a9eefd7dff4f9ba46b3faada090fca464450982c6839eb3e6333652d119ee"
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
