cask "kftray" do
    version "0.23.6"
    sha256 "5a419d6b8a2927a6290b85e7157fbc29f71cdb9beebb4606ea7b77fa553be0e9"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.23.6/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
