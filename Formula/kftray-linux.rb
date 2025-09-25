class KftrayLinux < Formula
    desc "A cross-platform system tray app for Kubernetes port-forward management."
    homepage "https://github.com/hcavarsan/kftray"
    version "0.26.0"

    def self.select_version
        if OS.linux? && File.exist?("/etc/os-release")
            os_release = File.read("/etc/os-release")

            if os_release.match(/^NAME.*Ubuntu/mi)
                version_match = os_release.match(/^VERSION_ID="(\d+)\.?\d*"/mi)
                return :newer_glibc if version_match && version_match[1].to_i >= 24
            end

            if os_release.match(/^NAME.*Debian/mi)
                version_match = os_release.match(/^VERSION_ID="(\d+)"/mi)
                return :newer_glibc if version_match && version_match[1].to_i >= 13
            end
        end
        :legacy
    end

    if select_version == :newer_glibc
        url "https://github.com/hcavarsan/kftray/releases/download/v0.26.0/kftray_0.26.0_newer-glibc_amd64.AppImage"
        sha256 "NEWER_GLIBC_SHA256_PLACEHOLDER"
    else
        url "https://github.com/hcavarsan/kftray/releases/download/v0.26.0/kftray_0.26.0_amd64.AppImage"
        sha256 "c02d6bd5d31378edf7b107a16d8ab0a18627e92318852344f6e6281bdea3af94"
    end

    def install
        appimage_name = url.split("/").last
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/#{appimage_name}")
        bin.install_symlink("#{prefix}/#{appimage_name}" => "kftray")
    end

    def caveats
        detected_version = self.class.select_version
        version_info = case detected_version
        when :newer_glibc
            "newer glibc version (auto-detected Ubuntu 24+ or Debian 13+)"
        else
            "legacy glibc version (default fallback)"
        end

        <<~EOS
        ================================

        Executable is linked as "kftray".
        Installed: #{version_info}

        Version selection is automatic based on your system:
        - Ubuntu 24.04+ or Debian 13+: newer glibc version
        - All other systems: legacy version (default fallback)

        ================================

        REQUIRED for Linux systems:

        1. Install GNOME Shell extension for AppIndicator support:
           https://extensions.gnome.org/extension/615/appindicator-support/

        2. If kftray doesn't start, install missing system dependencies:
           sudo apt install libayatana-appindicator3-dev librsvg2-dev

        ================================

        EOS
    end
end
