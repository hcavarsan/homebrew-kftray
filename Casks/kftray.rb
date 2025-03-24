cask "kftray" do
    version "0.18.0"
    sha256 "5da3dfbdccf9ef192e2c6b1419a55b27eaab44cb48b4f3be9f3cb665275b9acb"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.18.0/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
