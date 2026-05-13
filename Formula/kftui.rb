class Kftui < Formula
  desc "TUI application for managing multiple kubectl port-forward configurations"
  homepage "https://kftray.app"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.27.30/kftui_macos_universal"
      sha256 "0d9a5d0fbe5c7576e8e3b633750096bf4d34ebf1cc1c503452b33ee7545a3a90"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.27.30/kftui_linux_amd64"
      sha256 "3ec86824545821a36d477f87c2f333827c13669db89f376157fa4d78ca374fce"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.27.30/kftui_linux_arm64"
      sha256 "4dc491fc1ff8ac9e4e1e7e6aa4572626e924917f86667f39e9d184c610cecb71"
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
