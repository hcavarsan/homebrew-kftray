cask "kftray" do
    version "0.27.26"
    sha256 "2d6de5192df641cad96abda6ff7081e02f4d21ed971317fb62d79c269e73c23d"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.26/kftray_0.27.26_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
