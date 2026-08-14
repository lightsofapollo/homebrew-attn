cask "attn" do
  version "0.9.0"
  sha256 "98e4c4a68dc2b3a7d054a5ab8539c2764a3e34e79ed2f36ef84d2701905354ae"

  url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64.app.zip"
  name "attn"
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"

  app "attn.app"
  binary "#{appdir}/attn.app/Contents/MacOS/attn"

  zap trash: "~/.attn"
end
