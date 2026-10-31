class Kftui < Formula
  desc "TUI application for managing multiple kubectl port-forward configurations"
  homepage "https://kftray.app"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.35.1/kftui_macos_universal"
      sha256 "226b315a9c82ed6f3a5f9b362a89f6e768e08478ce2b087b991db35c9c73c017"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.35.1/kftui_linux_amd64"
      sha256 "bedd3645ba4e5dd7fa58ff324bb5b38ab4bdca8c0ff32ecc1b772e0096197d04"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.35.1/kftui_linux_arm64"
      sha256 "d6b03f8b97f8b3ec3f43ce0edddf01bb4fe43dd8bc07fb3f8dd240211c823c17"
    end
  end

  def install
    if OS.mac?
      bin.install "kftui_macos_universal" => "kftui"
    elsif OS.linux?
      if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
        bin.install "kftui_linux_amd64" => "kftui"
      elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        bin.install "kftui_linux_arm64" => "kftui"
      end
    end
  end

  test do
    system "#{bin}/kftui", "--version"
  end
end
