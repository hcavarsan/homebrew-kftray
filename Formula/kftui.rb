class Kftui < Formula
  desc "TUI application for managing multiple kubectl port-forward configurations"
  homepage "https://kftray.app"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.29.0/kftui_macos_universal"
      sha256 "6b422e840885ef40c6c138c9080812e6e7e81f24dee12a8bd2a5d2a00b9b0e01"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.29.0/kftui_linux_amd64"
      sha256 "76d3ff3b7442fee24127094e84d6d6299575c60b80d6f4fbe13d55e2abffa8da"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.29.0/kftui_linux_arm64"
      sha256 "0c072879dbddf837ae42481d99d438092501b2c21fba08abd381436cc403b7ff"
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
