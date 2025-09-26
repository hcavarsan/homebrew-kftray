class KftrayLinux < Formula
  desc "A cross-platform system tray app for Kubernetes port-forward management."
  homepage "https://github.com/hcavarsan/kftray"
  version "0.26.4"

  NEWER_GLIBC_AMD64_URL = "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftray_0.26.4_newer-glibc_amd64.AppImage"
  NEWER_GLIBC_AMD64_SHA = "6a04a44ecdfa50ccb492729b872880e6f88197b3e46610fd131d7213fd89c0c3"
  NEWER_GLIBC_ARM64_URL = "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftray_0.26.4_newer-glibc_aarch64.AppImage"
  NEWER_GLIBC_ARM64_SHA = "2670a38c141ab5cda83111777d7fef8ec321273cfc427ef202ce6f687a8aa1f6"

  NEWER_GLIBC_AMD64_URL = "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftray_0.26.4_newer-glibc_amd64.AppImage"
  NEWER_GLIBC_AMD64_SHA = "6a04a44ecdfa50ccb492729b872880e6f88197b3e46610fd131d7213fd89c0c3"
  NEWER_GLIBC_ARM64_URL = "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftray_0.26.4_newer-glibc_aarch64.AppImage"
  NEWER_GLIBC_ARM64_SHA = "2670a38c141ab5cda83111777d7fef8ec321273cfc427ef202ce6f687a8aa1f6"

  NEWER_GLIBC_AMD64_URL = "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftray_0.26.4_newer-glibc_amd64.AppImage"
  NEWER_GLIBC_AMD64_SHA = "6a04a44ecdfa50ccb492729b872880e6f88197b3e46610fd131d7213fd89c0c3"
  NEWER_GLIBC_ARM64_URL = "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftray_0.26.4_newer-glibc_aarch64.AppImage"
  NEWER_GLIBC_ARM64_SHA = "2670a38c141ab5cda83111777d7fef8ec321273cfc427ef202ce6f687a8aa1f6"

  on_linux do
      on_intel do
          url "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftray_0.26.4_amd64.AppImage"
          sha256 "9da486aa5909bec9a78dd612030d736b61535f1bb31d7745a9be3300cceac471"
      end

      on_arm do
          url "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftray_0.26.4_aarch64.AppImage"
          sha256 "262ee87457e1d718a08f62cc0310f642b1c2e999ddef189e31631a5d65ac8c6d"
      end
  end

  def install
      selected_url = nil
      selected_filename = nil

      if OS.linux? && File.exist?("/etc/os-release")
          os_release = File.read("/etc/os-release")
          use_newer_glibc = false

          if os_release.match(/^NAME.*Ubuntu/mi)
              version_match = os_release.match(/^VERSION_ID="(\d+)\.?\d*"/mi)
              use_newer_glibc = version_match && version_match[1].to_i >= 24
          elsif os_release.match(/^NAME.*Debian/mi)
              version_match = os_release.match(/^VERSION_ID="(\d+)"/mi)
              use_newer_glibc = version_match && version_match[1].to_i >= 13
          end

          if use_newer_glibc
              if Hardware::CPU.arm?
                  selected_url = NEWER_GLIBC_ARM64_URL
                  selected_filename = "kftray_#{version}_newer-glibc_aarch64.AppImage"
              else
                  selected_url = NEWER_GLIBC_AMD64_URL
                  selected_filename = "kftray_#{version}_newer-glibc_amd64.AppImage"
              end

              system "curl", "-L", "-o", selected_filename, selected_url
              system "chmod", "755", selected_filename
              prefix.install selected_filename
              bin.install_symlink("#{prefix}/#{selected_filename}" => "kftray")
          else
              downloaded_files = Dir["*.AppImage"]
              if downloaded_files.empty?
                  odie "No AppImage file found after download"
              end
              appimage_name = downloaded_files.first
              prefix.install appimage_name
              chmod(0755, "#{prefix}/#{appimage_name}")
              bin.install_symlink("#{prefix}/#{appimage_name}" => "kftray")
          end
      else
          downloaded_files = Dir["*.AppImage"]
          if downloaded_files.empty?
              odie "No AppImage file found after download"
          end
          appimage_name = downloaded_files.first
          prefix.install appimage_name
          chmod(0755, "#{prefix}/#{appimage_name}")
          bin.install_symlink("#{prefix}/#{appimage_name}" => "kftray")
      end

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

      icon_sizes = ["32x32", "48x48", "64x64", "128x128", "256x256"]

      icon_sizes.each do |size|
          icon_dir = share/"icons/hicolor/#{size}/apps"
          icon_dir.mkpath

          system "curl", "-L", "-o", "kftray-#{size}.png",
                 "https://raw.githubusercontent.com/hcavarsan/kftray-blog/main/img/logo.png"

          if File.exist?("kftray-#{size}.png")
              (icon_dir/"kftray.png").write File.read("kftray-#{size}.png")
              rm "kftray-#{size}.png"
          end
      end
  end

  def post_install
      system "mkdir", "-p", "#{ENV["HOME"]}/.local/share/applications"

      icon_sizes = ["32x32", "48x48", "64x64", "128x128", "256x256"]
      icon_sizes.each do |size|
          system "mkdir", "-p", "#{ENV["HOME"]}/.local/share/icons/hicolor/#{size}/apps"
      end

      system "cp", "#{HOMEBREW_PREFIX}/share/applications/kftray.desktop", "#{ENV["HOME"]}/.local/share/applications/"

      icon_sizes.each do |size|
          system "cp", "#{HOMEBREW_PREFIX}/share/icons/hicolor/#{size}/apps/kftray.png", "#{ENV["HOME"]}/.local/share/icons/hicolor/#{size}/apps/" rescue nil
      end

      system "update-desktop-database", "#{ENV["HOME"]}/.local/share/applications" rescue nil
      system "gtk-update-icon-cache", "#{ENV["HOME"]}/.local/share/icons/hicolor/", "--force", "--quiet" rescue nil
  end

  def caveats
      variant_info = ""

      if OS.linux? && File.exist?("/etc/os-release")
          os_release = File.read("/etc/os-release")
          arch_str = Hardware::CPU.arm? ? "ARM64" : "AMD64"

          if os_release.match(/^NAME.*Ubuntu/mi)
              version_match = os_release.match(/^VERSION_ID="(\d+)\.?\d*"/mi)
              if version_match && version_match[1].to_i >= 24
                  variant_info = "Installed: newer glibc (Ubuntu #{version_match[1]}+) for #{arch_str}"
              else
                  variant_info = "Installed: legacy glibc (Ubuntu #{version_match[1] if version_match}) for #{arch_str}"
              end
          elsif os_release.match(/^NAME.*Debian/mi)
              version_match = os_release.match(/^VERSION_ID="(\d+)"/mi)
              if version_match && version_match[1].to_i >= 13
                  variant_info = "Installed: newer glibc (Debian #{version_match[1]}+) for #{arch_str}"
              else
                  variant_info = "Installed: legacy glibc (Debian #{version_match[1] if version_match}) for #{arch_str}"
              end
          else
              variant_info = "Installed: legacy glibc (unknown distro) for #{arch_str}"
          end
      end

      <<~EOS
      ================================

      Executable is linked as "kftray".
      #{variant_info}

      Version selection is automatic based on your system:
      - OS: Ubuntu 24.04+/Debian 13+ uses newer glibc, others use legacy
      - Architecture: Auto-detected

      ================================

      DESKTOP INTEGRATION:

      Desktop entry and icons have been installed to both system and user locations:
      - System: /home/linuxbrew/.linuxbrew/share/applications/kftray.desktop
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
end
