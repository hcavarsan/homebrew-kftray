cask "kftray" do
    version "0.27.30"
    sha256 "c233ad47b0b6f67cd54d432fb90ba91fbb5314ea56fc2a98cd44389ac13cda99"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.30/kftray_0.27.30_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
