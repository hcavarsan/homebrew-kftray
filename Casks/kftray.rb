cask "kftray" do
    version "0.23.3"
    sha256 "9129ef682ede167ac8f8ee1d1d5664574d78f65d85a541dd14e39c49892698aa"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.23.3/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
