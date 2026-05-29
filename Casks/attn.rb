cask "attn" do
  version "0.7.0"
  sha256 "011d1e0de558b1f9b29c5d4fee742c2044f20f7f288973273dbaed3ee21ea380"

  url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64.app.zip"
  name "attn"
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"

  app "attn.app"
  binary "#{appdir}/attn.app/Contents/MacOS/attn"

  zap trash: "~/.attn"
end
