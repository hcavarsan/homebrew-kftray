class Kftui < Formula
  desc "TUI application for managing multiple kubectl port-forward configurations"
  homepage "https://kftray.app"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.22.1/kftui_macos_universal"
      sha256 "c5a25b297f982616439d7cb0303b96095db0602c751724624baa372bf5018c72"

      def install
        bin.install "kftui_macos_universal" => "kftui"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hcavarsan/kftray/releases/download/v0.22.1/kftui_linux_amd64"
        sha256 "c5a25b297f982616439d7cb0303b96095db0602c751724624baa372bf5018c72"

        def install
          bin.install "kftui_linux_amd64" => "kftui"
        end
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.22.1/kftui_linux_arm64"
      sha256 "c5a25b297f982616439d7cb0303b96095db0602c751724624baa372bf5018c72"

      def install
        bin.install "kftui_linux_arm64" => "kftui"
      end
    end
  end

  test do
    system "#{bin}/kftui", "--version"
  end
