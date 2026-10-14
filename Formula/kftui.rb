class Kftui < Formula
  desc "TUI application for managing multiple kubectl port-forward configurations"
  homepage "https://kftray.app"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.32.4/kftui_macos_universal"
      sha256 "c3c1ec5bb11a6442bc78be730b9b80b044c4da75ef3361e2031832c6219c77f2"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.32.4/kftui_linux_amd64"
      sha256 "ad43fa41ede0b378d4364132f1b118b049929ef837ba55c94c98b5d0bae00a2d"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.32.4/kftui_linux_arm64"
      sha256 "0ff29d0af1878056353d8bbfcfa8758cd4b20f91fba34c6d5b8d3d5279934865"
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
