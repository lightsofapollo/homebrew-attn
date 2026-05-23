class Attn < Formula
  desc "A beautiful markdown viewer that launches from the CLI"
  homepage "https://github.com/lightsofapollo/attn"
  license "MIT"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-darwin-arm64.app.zip"
      sha256 "a14ec6b92ebf1582ce55950bb8c2d25568b0c6815681b721aca698f00f797d19"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightsofapollo/attn/releases/download/v#{version}/attn-v#{version}-linux-x64"
      sha256 "aacdade11aff8b9931f719511b75d01de16bd555a6638f696757310f723e0fa6"
    end
  end

  # attn is a wry/WebKitGTK desktop app. The Linux binary dynamically links the
  # system GTK/WebKit/appindicator libraries (it's built against them on CI), so
  # they must be present at runtime. We do NOT `depends_on` Homebrew's gtk — that
  # would pull a parallel GTK stack that conflicts with the system one for a GUI
  # app — and instead point users at their distro packages.
  def caveats
    return unless OS.linux?

    <<~EOS
      attn is a GTK/WebKitGTK desktop app. On Linux it needs these system
      libraries at runtime — install them with your package manager, e.g. on
      Debian/Ubuntu:
        sudo apt-get install libgtk-3-0 libwebkit2gtk-4.1-0 libayatana-appindicator3-1
      (Fedora: gtk3 webkit2gtk4.1 libayatana-appindicator-gtk3)
    EOS
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
