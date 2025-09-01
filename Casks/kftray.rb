cask "kftray" do
    version "0.23.2"
    sha256 "08b100fa2167fbf19241794304300cbbbbe016c3e9c7b745d3648fb93c857495"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.23.2/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
