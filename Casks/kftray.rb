cask "kftray" do
    version "0.33.0"
    sha256 "4d2d723703baaad953a104fac031ae34c2fd3f18e4efa5841004322c213e1950"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.33.0/kftray_0.33.0_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
