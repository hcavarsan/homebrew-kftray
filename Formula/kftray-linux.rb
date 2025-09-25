class KftrayLinux < Formula
    desc "A cross-platform system tray app for Kubernetes port-forward management."
    homepage "https://github.com/hcavarsan/kftray"
    version "0.26.0"

    def self.select_variant
        os_variant = :legacy

        if OS.linux? && File.exist?("/etc/os-release")
            os_release = File.read("/etc/os-release")

            if os_release.match(/^NAME.*Ubuntu/mi)
                version_match = os_release.match(/^VERSION_ID="(\d+)\.?\d*"/mi)
                os_variant = :newer_glibc if version_match && version_match[1].to_i >= 24
            end

            if os_release.match(/^NAME.*Debian/mi)
                version_match = os_release.match(/^VERSION_ID="(\d+)"/mi)
                os_variant = :newer_glibc if version_match && version_match[1].to_i >= 13
            end
        end

        arch = if Hardware::CPU.arm?
            :arm64
        else
            :amd64
        end

        { os: os_variant, arch: arch }
    end

    variant = select_variant

    if variant[:os] == :newer_glibc && variant[:arch] == :amd64
        url "https://github.com/hcavarsan/kftray/releases/download/v0.26.0/kftray_0.26.0_newer-glibc_amd64.AppImage"
        sha256 "NEWER_GLIBC_AMD64_SHA256_PLACEHOLDER"
    elsif variant[:os] == :newer_glibc && variant[:arch] == :arm64
        url "https://github.com/hcavarsan/kftray/releases/download/v0.26.0/kftray_0.26.0_newer-glibc_aarch64.AppImage"
        sha256 "NEWER_GLIBC_ARM64_SHA256_PLACEHOLDER"
    elsif variant[:os] == :legacy && variant[:arch] == :arm64
        url "https://github.com/hcavarsan/kftray/releases/download/v0.26.0/kftray_0.26.0_aarch64.AppImage"
        sha256 "LEGACY_ARM64_SHA256_PLACEHOLDER"
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
        variant = self.class.select_variant
        arch_str = variant[:arch] == :arm64 ? "ARM64" : "AMD64"
        os_str = variant[:os] == :newer_glibc ? "newer glibc (Ubuntu 24+/Debian 13+)" : "legacy glibc"

        <<~EOS
        ================================

        Executable is linked as "kftray".
        Installed: #{os_str} for #{arch_str}

        Version selection is automatic based on your system:
        - OS: Ubuntu 24.04+/Debian 13+ uses newer glibc, others use legacy
        - Architecture: #{arch_str} detected

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
