cask "kftray" do
    version "0.30.2"
    sha256 "3d58e99da0d6cfd1323b06cf0d8344f5a3e3047a2480acce6d6e0a2ffac21c90"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.30.2/kftray_0.30.2_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
