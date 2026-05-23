cask "attn" do
  version "0.4.3"
  sha256 "c87e08e123b8a7c5d61123464aa14a7fcc2bebbed9b816cdf9bec5924f0faa3e"

  url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64.app.zip"
  name "attn"
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"

  app "attn.app"
  binary "#{appdir}/attn.app/Contents/MacOS/attn"

  zap trash: "~/.attn"
end
