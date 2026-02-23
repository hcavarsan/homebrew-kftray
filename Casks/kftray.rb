cask "kftray" do
    version "0.27.27"
    sha256 "d6ae0ec440cf683b75d40582b2d4614e69c412a6c09be43778afcd53ecf2fcbb"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.27/kftray_0.27.27_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
