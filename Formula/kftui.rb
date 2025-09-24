class Kftui < Formula
  desc "TUI application for managing multiple kubectl port-forward configurations"
  homepage "https://kftray.app"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.25.6/kftui_macos_universal"
      sha256 "73f68602658b4f133a26d2c16ac88a8ec1f83ad108071af29a19d991bb6fc8bc"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.25.6/kftui_linux_amd64"
      sha256 "c68c563db2d5243c607646ff7688a312d890fe11d7e2bd09de19aa0349267a19"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.25.6/kftui_linux_arm64"
      sha256 "3a11a416ef65b6f2583c53a9e4a07c7615449be87926b31c401ac5e5111f4aee"
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
