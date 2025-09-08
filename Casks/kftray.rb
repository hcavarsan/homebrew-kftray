cask "kftray" do
    version "0.23.5"
    sha256 "2acbaef41795b392d6a2443451d5c035054bae3a98cb31f8045d02a1d8c44908"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.23.5/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
