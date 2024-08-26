cask "kftray" do
    version "0.13.2"
    sha256 "f48b1231157b30f8c1e01d9f9f868ed322f5ee1db1e817d7e51bf1a0c1752ab0"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.13.2/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
