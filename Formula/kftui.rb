class Kftui < Formula
  desc "TUI application for managing multiple kubectl port-forward configurations"
  homepage "https://kftray.app"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/hcavarsan/kftray/releases/download/VERSION_PLACEHOLDER/kftui_macos_universal"
      sha256 "SHA256_PLACEHOLDER"

      def install
        bin.install "kftui_macos_universal" => "kftui"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hcavarsan/kftray/releases/download/VERSION_PLACEHOLDER/kftui_linux_amd64"
        sha256 "SHA256_PLACEHOLDER"

        def install
          bin.install "kftui_linux_amd64" => "kftui"
        end
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/VERSION_PLACEHOLDER/kftui_linux_arm64"
      sha256 "SHA256_PLACEHOLDER"

      def install
        bin.install "kftui_linux_arm64" => "kftui"
      end
    end
  end

  test do
    system "#{bin}/kftui", "--version"
  end
end