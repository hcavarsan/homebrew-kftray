cask "kftray" do
    version "0.27.32"
    sha256 "2fbb78a8ac930f30442bf74f45716a5afa0cf50bcf6dcb75d7e90b80dbc25d78"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.32/kftray_0.27.32_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
