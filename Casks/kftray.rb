cask "kftray" do
    version "0.27.2"
    sha256 "0c3594c84fa3990c8bc324192e3668be881e8a8ae7c1599998ba9e57f9f6b71d"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.2/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
