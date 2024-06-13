require "language/node"

class Kftray < Formula
  desc "A tray app with Tauri and React"
  homepage "https://github.com/hcavarsan/kftray"
  head "https://github.com/hcavarsan/kftray.git", branch: "main"
  license "MIT"
  version "HEAD"

  depends_on "rust" => :build
  depends_on "node@20" => :build
  depends_on "pnpm" => :build

  on_linux do
    depends_on "gtk+"
    depends_on "gtk+3"
    depends_on "libsoup@2"
    depends_on "librsvg"
    depends_on "pkg-config"
  end

  def install
    ENV["CI"] = "true"

    # Ensure pnpm uses the correct Node.js version
    ENV.prepend_path "PATH", Formula["node@20"].opt_bin

    system "pnpm", "install"

    if build.head?
      if OS.mac?
        system "pnpm", "run", "tauri", "build", "-b", "app"
        app_bundle = "kftray.app"
        prefix.install "target/release/bundle/macos/#{app_bundle}"
        bin.install_symlink prefix/"kftray.app/Contents/MacOS/kftray"
      elsif OS.linux?
        ENV["NO_STRIP"] = "true"
        system "pnpm", "run", "tauri", "build", "--", "-b", "appimage", "--verbose"
        appimage = "src-tauri/target/release/bundle/linux/kftray.AppImage"
        bin.install appimage
        chmod 0755, bin/"kftray.AppImage"
      end
    end
  end

  def caveats
    s = ""
    if OS.mac?
      s += <<~EOS
        To link kftray to the Applications folder, you can run the following command:
          ln -sf #{prefix}/kftray.app /Applications/kftray.app
      EOS
    elsif OS.linux?
      s += <<~EOS
        To integrate kftray into your system, you can run the following command:
          #{bin}/kftray.AppImage --integrate
      EOS
    end
    s
  end
end
