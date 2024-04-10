# typed: false
# frozen_string_literal: true

class KftrayTest < Formula
  desc "A cross-platform system tray app for Kubernetes port-forward management."
  homepage "https://github.com/hcavarsan/kftray"
  version "0.9.6"
  license "MIT"

  on_macos do
    url "https://github.com/hcavarsan/kftray/releases/download/v#{version}/kftray_universal.app.tar.gz"
    sha256 "01a7f4c4fbf2126657610132c144857665a70af37840bd5c1d4a2421d7f94b6a"

    def install
      prefix.install "Contents/MacOS/kftray"
      bin.install_symlink prefix/"kftray.app/Contents/MacOS/kftray"
    end
  end

  on_linux do
    url "https://github.com/hcavarsan/kftray/releases/download/v#{version}/kftray_#{version}_amd64.AppImage.tar.gz"
    sha256 "a318d19c6cd69eec440d4e7440f5c98cb86873ebec676084543f23389b0f8996"

    def install
      bin.install "kftray"
    end
  end

  def caveats
    s = ""
    if OS.mac?
      s += <<~EOS
        ================================

        Executable is linked as "kftray".

        ================================

        To link kftray to the Applications folder, you can run the following command:
        ln -sf #{prefix}/kftray.app /Applications/kftray.app

        ================================

        EOS
    elsif OS.linux?
      s += <<~EOS
      ================================

      Executable is linked as "kftray".

      ================================

      For Linux: due to GTK limitations, it is necessary to install and enable the GNOME Shell extension for AppIndicator support to kftray works. See here: https://extensions.gnome.org/extension/615/appindicator-support/

      ================================

      EOS
    end
    s
  end
end
