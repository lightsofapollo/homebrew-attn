cask "attn" do
  version "0.6.9"
  sha256 "fe7a852c4a982661fb5ba2e68182a4ed02182a1c6e721b81fdfe5f865a86fcd6"

  url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64.app.zip"
  name "attn"
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"

  app "attn.app"
  binary "#{appdir}/attn.app/Contents/MacOS/attn"

  zap trash: "~/.attn"
end
