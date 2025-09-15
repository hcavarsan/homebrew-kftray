cask "kftray" do
    version "0.24.0"
    sha256 "4dc0cbf1d6c982c59eae7ba558d285c8a1c9ecf9ec34397591c22de056907fa9"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.24.0/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
