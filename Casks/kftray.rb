cask "kftray" do
    version "0.15.8"
    sha256 "85f16592d7c3f26a3dca691eb96d31d1be724bb2554dbbbdb7f67993075747dd"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.15.8/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
