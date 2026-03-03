class Attn < Formula
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"
  license "MIT"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64.app.zip"
      sha256 "dcf1c11606679cb58b37e8344c39a322af36cb3f1fd140b1ee0111a38c523472"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-linux-x64"
      sha256 "9a5d50e04b5909c036597dfe3053c01b9ba879853a61bcb8cbfc0771eb06fce0"
    end
  end

  def install
    if OS.mac?
      # Homebrew strips the top-level attn.app/ dir from the zip,
      # so buildpath contains Contents/ directly. Reconstruct the bundle.
      (prefix/"attn.app").install Dir["*"]
      bin.install_symlink prefix/"attn.app/Contents/MacOS/attn"
    else
      downloaded = Dir["attn-v*"].first
      if downloaded
        mv downloaded, "attn"
      end
      chmod 0755, "attn"
      bin.install "attn"
    end
  end

  test do
    assert_match "markdown viewer", shell_output("#{bin}/attn --help")
  end
end
