class Kftui < Formula
  desc "TUI application for managing multiple kubectl port-forward configurations"
  homepage "https://kftray.app"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.30.4/kftui_macos_universal"
      sha256 "93349f53d993bc1be834a7b1bfaf96d2b4b6890c09dec3f86d7be1bd480174ea"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.30.4/kftui_linux_amd64"
      sha256 "c8afb80ebb602ad72d0b4b6ef8b2687cd7840c3a4850f31b6bf5ad76055cd4c3"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.30.4/kftui_linux_arm64"
      sha256 "4c1263d16d7fbf9bbdf9e8486972786a5d947d8ea7ff5d3cdb744d3d705e5277"
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
