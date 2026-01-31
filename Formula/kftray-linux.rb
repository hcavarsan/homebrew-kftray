require "digest"

class KftrayLinux < Formula
  desc "A cross-platform system tray app for Kubernetes port-forward management."
  homepage "https://github.com/hcavarsan/kftray"
  version "0.27.25"

  NEWER_GLIBC_AMD64_SHA = "d54e58af204f38a7825698db1a0f8f643d8b038b6abb4233424885d21306c4d1"
  NEWER_GLIBC_ARM64_SHA = "9d7bc57be6dd766be54131cfa059f33cb86d6eb1cca435019047a6dcefdde07b"


  on_linux do
      on_intel do
          url "https://github.com/hcavarsan/kftray/releases/download/v0.27.25/kftray_0.27.25_amd64.AppImage"
          sha256 "e289d3bde228fe96be19c771ea05867f5d5d3c6a6a9f0d0ed0400f65116a23e5"
      end

      on_arm do
          url "https://github.com/hcavarsan/kftray/releases/download/v0.27.25/kftray_0.27.25_aarch64.AppImage"
          sha256 "4b1f58f705d96a5ce6f7a1ca6d0757475b8b79f049f064381e231173712742c4"
      end
  end

  def install
      if needs_newer_glibc?
          download_newer_glibc_variant
      else
          install_default_appimage
      end

      install_desktop_integration
  end

  def post_install
      setup_user_directories
      copy_desktop_files
      update_desktop_database
  end

  def caveats
      arch_str = Hardware::CPU.arm? ? "ARM64" : "AMD64"
      variant_info = if OS.linux? && File.exist?("/etc/os-release")
          os_release = File.read("/etc/os-release")
          if os_release.match(/^NAME.*Ubuntu/mi)
              version_match = os_release.match(/^VERSION_ID="(\d+)\.?\d*"/mi)
              if version_match && version_match[1].to_i >= 24
                  "Installed: newer glibc (Ubuntu #{version_match[1]}+) for #{arch_str}"
              else
                  "Installed: legacy glibc (Ubuntu #{version_match[1] if version_match}) for #{arch_str}"
              end
          elsif os_release.match(/^NAME.*Debian/mi)
              version_match = os_release.match(/^VERSION_ID="(\d+)"/mi)
              if version_match && version_match[1].to_i >= 13
                  "Installed: newer glibc (Debian #{version_match[1]}+) for #{arch_str}"
              else
                  "Installed: legacy glibc (Debian #{version_match[1] if version_match}) for #{arch_str}"
              end
          else
              "Installed: legacy glibc (unknown distro) for #{arch_str}"
          end
      else
          "Installed: legacy glibc (non-Linux)"
      end

      <<~EOS
        ================================

        Executable is linked as "kftray".
        #{variant_info}

        Version selection is automatic based on your system:
        - OS: Ubuntu 24.04+/Debian 13+ uses newer glibc, others use legacy
        - Architecture: Auto-detected (#{arch_str})

        ================================

        DESKTOP INTEGRATION:

        Desktop entry and icons have been installed to both system and user locations:
        - System: #{HOMEBREW_PREFIX}/share/applications/kftray.desktop
        - User: ~/.local/share/applications/kftray.desktop
        - Icons: ~/.local/share/icons/hicolor/*/apps/kftray.*

        To refresh the desktop database:
        update-desktop-database ~/.local/share/applications 2>/dev/null || true

        ================================

        REQUIRED for Linux systems:

        1. Install GNOME Shell extension for AppIndicator support:
           https://extensions.gnome.org/extension/615/appindicator-support/

        2. If kftray doesn't start, install missing system dependencies:
           sudo apt install libayatana-appindicator3-dev librsvg2-dev

        ================================
      EOS
  end

  private

  def needs_newer_glibc?
      return false unless OS.linux? && File.exist?("/etc/os-release")

      os_release = File.read("/etc/os-release")

      if os_release.match(/^NAME.*Ubuntu/mi)
          version_match = os_release.match(/^VERSION_ID="(\d+)\.?\d*"/mi)
          version_match && version_match[1].to_i >= 24
      elsif os_release.match(/^NAME.*Debian/mi)
          version_match = os_release.match(/^VERSION_ID="(\d+)"/mi)
          version_match && version_match[1].to_i >= 13
      else
          false
      end
  end

  def download_newer_glibc_variant
      arch_suffix = Hardware::CPU.arm? ? "aarch64" : "amd64"
      filename = "kftray_#{version}_newer-glibc_#{arch_suffix}.AppImage"
      download_url = "https://github.com/hcavarsan/kftray/releases/download/v#{version}/#{filename}"
      expected_sha = Hardware::CPU.arm? ? self.class::NEWER_GLIBC_ARM64_SHA : self.class::NEWER_GLIBC_AMD64_SHA

      system "curl", "-L", "-o", filename, download_url

      # Verify SHA256
      actual_sha = Digest::SHA256.file(filename).hexdigest
      unless actual_sha == expected_sha
          odie "SHA256 mismatch for #{filename}. Expected: #{expected_sha}, Got: #{actual_sha}"
      end

      install_appimage(filename)
  end

  def install_default_appimage
      downloaded_files = Dir["*.AppImage"]
      odie "No AppImage file found after download" if downloaded_files.empty?

      install_appimage(downloaded_files.first)
  end

  def install_appimage(filename)
      system "chmod", "755", filename
      prefix.install filename
      bin.install_symlink("#{prefix}/#{filename}" => "kftray")
  end

  def install_desktop_integration
      create_desktop_file
      install_icons
  end

  def create_desktop_file
      desktop_content = <<~DESKTOP
        [Desktop Entry]
        Version=1.0
        Type=Application
        Name=kftray
        Comment=A cross-platform system tray app for Kubernetes port-forward management
        Exec=#{HOMEBREW_PREFIX}/bin/kftray
        Icon=kftray
        Categories=Development;Network;
        Terminal=false
        StartupWMClass=kftray
        StartupNotify=true
        MimeType=
        Keywords=kubernetes;k8s;port-forward;tray;
      DESKTOP

      desktop_dir = share/"applications"
      desktop_dir.mkpath
      (desktop_dir/"kftray.desktop").write desktop_content
  end

  def install_icons
      icon_sizes = ["32x32", "48x48", "64x64", "128x128", "256x256"]
      icon_url = "https://raw.githubusercontent.com/hcavarsan/kftray-blog/main/img/logo.png"

      icon_sizes.each do |size|
          icon_dir = share/"icons/hicolor/#{size}/apps"
          icon_dir.mkpath

          tmp_icon = "kftray-#{size}.png"
          system "curl", "-L", "-o", tmp_icon, icon_url

          if File.exist?(tmp_icon)
              (icon_dir/"kftray.png").write File.read(tmp_icon)
              rm tmp_icon
          end
      end
  end

  private

  def setup_user_directories
      user_apps_dir = "#{ENV["HOME"]}/.local/share/applications"
      system "mkdir", "-p", user_apps_dir

      ["32x32", "48x48", "64x64", "128x128", "256x256"].each do |size|
          icon_dir = "#{ENV["HOME"]}/.local/share/icons/hicolor/#{size}/apps"
          system "mkdir", "-p", icon_dir
      end
  end

  def copy_desktop_files
      desktop_file = "#{HOMEBREW_PREFIX}/share/applications/kftray.desktop"
      user_desktop_file = "#{ENV["HOME"]}/.local/share/applications/kftray.desktop"
      system "cp", desktop_file, user_desktop_file

      ["32x32", "48x48", "64x64", "128x128", "256x256"].each do |size|
          src_icon = "#{HOMEBREW_PREFIX}/share/icons/hicolor/#{size}/apps/kftray.png"
          dst_icon = "#{ENV["HOME"]}/.local/share/icons/hicolor/#{size}/apps/kftray.png"
          system "cp", src_icon, dst_icon rescue nil
      end
  end

  def update_desktop_database
      user_apps_dir = "#{ENV["HOME"]}/.local/share/applications"
      user_icons_dir = "#{ENV["HOME"]}/.local/share/icons/hicolor/"

      system "update-desktop-database", user_apps_dir rescue nil
      system "gtk-update-icon-cache", user_icons_dir, "--force", "--quiet" rescue nil
  end

end