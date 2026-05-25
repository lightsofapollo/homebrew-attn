cask "attn" do
  version "0.6.11"
  sha256 "a24cd8124f9cef4342125d479ee4a058e85702045947455f77b22c6625f21279"

  url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64.app.zip"
  name "attn"
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"

  app "attn.app"
  binary "#{appdir}/attn.app/Contents/MacOS/attn"

  zap trash: "~/.attn"
end
