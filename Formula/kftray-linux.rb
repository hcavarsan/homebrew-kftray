class KftrayLinux < Formula
    desc "A cross-platform system tray app for Kubernetes port-forward management."
    homepage "https://github.com/hcavarsan/kftray"
    version "0.22.0"
    url "https://github.com/hcavarsan/kftray/releases/download/v0.22.0/kftray_0.22.0_amd64.AppImage"
    sha256 "89b89602af32e0a6e36ab7f7c2c572c3aa26336b9015fda888ac38ff39036c06"

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
