cask "attn" do
  version "0.6.1"
  sha256 "4c42c28ac430374a92d15485ff348f1e86017232140b718b786ece0d71a0a2f6"

  url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64.app.zip"
  name "attn"
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"

  app "attn.app"
  binary "#{appdir}/attn.app/Contents/MacOS/attn"

  zap trash: "~/.attn"
end
