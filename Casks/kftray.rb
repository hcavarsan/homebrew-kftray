cask "kftray" do
    version "0.27.29"
    sha256 "1e87d8cc7a28c8c788e90b5a87682e3f250d2d60cc5e9fd24978a17e90fe640c"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.29/kftray_0.27.29_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
