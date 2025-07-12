class KftrayLinux < Formula
    desc "A cross-platform system tray app for Kubernetes port-forward management."
    homepage "https://github.com/hcavarsan/kftray"
    version "0.20.0"
    url "https://github.com/hcavarsan/kftray/releases/download/v0.20.0/kftray_0.20.0_amd64.AppImage"
    sha256 "0d17a6161c965dfabd85b102578d76a340c31cd31de8bee9b8b707fb896a1dca"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/kftray_#{version}_amd64.AppImage")
        bin.install_symlink("#{prefix}/kftray_#{version}_amd64.AppImage" => "kftray")
    end

    def caveats; <<~EOS
        ================================
        
        Executable is linked as "kftray".
         
        ================================
        
        For Linux: due to GTK limitations, it is necessary to install and enable the GNOME Shell extension for AppIndicator support to kftray works. See here: https://extensions.gnome.org/extension/615/appindicator-support/
        
        ================================
        
        EOS
    end
end
