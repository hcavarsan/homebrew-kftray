class KftrayLinus < Formula
    desc "A cross-platform system tray app for Kubernetes port-forward management."
    homepage "https://github.com/hcavarsan/kftray"
    version "0.9.2"
    url "https://github.com/hcavarsan/kftray/releases/latest/download/kftray_#{version}_amd64.AppImage"
    sha256 "e48c48296b5a28fd1ff0d696c6a673d4dda1b81f1fb3fe927c155540239a12db"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/kftray_#{version}_amd64.AppImage")
        bin.install_symlink("#{prefix}/kftray_#{version}_amd64.AppImage" => "kftray")
    end

    def caveats; <<~EOS
        Executable is linked as "kftray".
        For Linux: due to GTK limitations, it is necessary to install and enable the GNOME Shell extension for AppIndicator support to kftray works. See here: https://extensions.gnome.org/extension/615/appindicator-support/
        EOS
    end
endΩ
