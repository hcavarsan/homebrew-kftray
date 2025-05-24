cask "kftray" do
    version "0.19.0"
    sha256 "b8addc752aaad82b65269453b6441029132671f087d42df33783487b90cd522b"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.19.0/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
