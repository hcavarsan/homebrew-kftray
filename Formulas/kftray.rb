class Kftray < Formula
  desc "A tray app with Tauri and React"
  homepage "https://github.com/hcavarsan/kftray"
  version "0.3.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/hcavarsan/kftray/releases/download/v#{version}/kftray_universal.app.tar.gz"
    sha256 "3e56fae80fcf021b2a518586170efc612ccffee837493782005d0a2cfbd32d8e"
  elsif OS.linux?
    url "https://github.com/hcavarsan/kftray/releases/download/v#{version}/kftray_#{version}_amd64.AppImage.tar.gz"
    sha256 "ac6f7761df0660fe9df2a22febf28a04ce566fe66d45778f499a669c38342aa3"
  end

  def install
    if OS.mac?
      prefix.install bin.glob("*.app")
      bin.write_exec_script "kftray.app/Contents/MacOS/kftray"
    elsif OS.linux?cp
      bin.install "kftray.AppImage" => "kftray"
      chmod 0755, bin/"kftray"
    end
  end
end
