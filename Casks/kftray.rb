cask "kftray" do
    version "0.27.6"
    sha256 "9f5f4d848e1195e334e35c30e5dfc3d0acc01b0be43c43a98d18972659af5404"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.6/kftray_0.27.6_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
