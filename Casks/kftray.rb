cask "kftray" do
    version "0.22.0"
    sha256 "e04bc5d64fbb321eccc8617ef784e251fc69913d80902369fb5f3ab62fe11d8a"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.22.0/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
