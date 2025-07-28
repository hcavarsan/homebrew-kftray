class KftrayLinux < Formula
    desc "A cross-platform system tray app for Kubernetes port-forward management."
    homepage "https://github.com/hcavarsan/kftray"
    version "0.20.3"
    url "https://github.com/hcavarsan/kftray/releases/download/v0.20.3/kftray_0.20.3_amd64.AppImage"
    sha256 "9199651760d1d6cd076b579212f272d54ea661cbe2e0afa91716002d41898949"

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
