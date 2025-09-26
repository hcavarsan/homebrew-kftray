class Kftui < Formula
  desc "TUI application for managing multiple kubectl port-forward configurations"
  homepage "https://kftray.app"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftui_macos_universal"
      sha256 "1e21511387bf17cc7a2c9870ab63ad5f16fc8a81ac62f4016c91018c697859da"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftui_linux_amd64"
      sha256 "d5eaff9c34973f2080a540b9a89dd6d57366b29c2bfd6b882b6b85c06d37638b"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftui_linux_arm64"
      sha256 "967af82a5bb806a0de042988defad7bd46e2a35eb4ea8b459138a3a4e388ed0a"
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
