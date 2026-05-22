cask "attn" do
  version "0.4.2"
  sha256 "54c835e6244e046f6f2fcce81a7d08b35ddb4bfcf4b5b0e5e70dd9feb8934303"

  url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64.app.zip"
  name "attn"
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"

  app "attn.app"
  binary "#{appdir}/attn.app/Contents/MacOS/attn"

  zap trash: "~/.attn"
end
