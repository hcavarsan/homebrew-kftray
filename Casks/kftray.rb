cask "kftray" do
    version "0.25.4"
    sha256 "cf7a8132af910bf0821c1f23786bbc6312dcb3d7d282112360e65abf20161782"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.25.4/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
