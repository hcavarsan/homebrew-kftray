class KftrayLinux < Formula
    desc "A cross-platform system tray app for Kubernetes port-forward management."
    homepage "https://github.com/hcavarsan/kftray"
    version "0.23.6"
    url "https://github.com/hcavarsan/kftray/releases/download/v0.23.6/kftray_0.23.6_amd64.AppImage"
    sha256 "015d78c9bcfdd75b89f81a27e3c0e5537ff2f53813f54c860ab2513f93b71f79"

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
