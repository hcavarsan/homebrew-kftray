cask "kftray" do
    version "0.27.24"
    sha256 "5292bc55bc8bbd336cf8b3c7b1517e9ab0a901f83b0c9feca3af2cc543aaf4cc"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.24/kftray_0.27.24_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
