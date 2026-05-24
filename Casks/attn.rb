cask "attn" do
  version "0.6.2"
  sha256 "87e005c79b60e2ff63d3a4dab83d755dc9c094aa9fd22c5ef6f7ac9c6dbf6403"

  url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64.app.zip"
  name "attn"
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"

  app "attn.app"
  binary "#{appdir}/attn.app/Contents/MacOS/attn"

  zap trash: "~/.attn"
end
