class Kftui < Formula
  desc "TUI application for managing multiple kubectl port-forward configurations"
  homepage "https://kftray.app"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm? || Hardware::CPU.intel?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.26.0/kftui_macos_universal"
      sha256 "72707bf76b80da6359ae54ffafa2bb66f37311325e5e36acf3bfcb9b91ebcd75"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.26.0/kftui_linux_amd64"
      sha256 "ddd6d34dbc97135fd5f2a5ba72d9c3a6abffe6c7a47e1b9fec8872031a0f00de"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hcavarsan/kftray/releases/download/v0.26.0/kftui_linux_arm64"
      sha256 "d7dfd70f129b6983db480871178dfe1a7f32bdd4e2d7267b342dbb7db28ec39d"
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
