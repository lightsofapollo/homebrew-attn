cask "attn" do
  version "0.3.3"
  sha256 "536665cf8bbeebaebfe9245ad86dcd6c1fb37e7500dbcf28c8b7f0b6c76ac38f"

  url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64.app.zip"
  name "attn"
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"

  app "attn.app"
  binary "#{appdir}/attn.app/Contents/MacOS/attn"

  zap trash: "~/.attn"
end
