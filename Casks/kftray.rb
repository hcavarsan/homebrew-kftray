cask "kftray" do
    version "0.34.0"
    sha256 "bd65852e8fd0692270277f7a75bacb973362f39b4eee8934b688b30a05ccc73b"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.34.0/kftray_0.34.0_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
