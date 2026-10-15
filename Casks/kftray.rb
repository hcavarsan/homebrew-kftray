cask "kftray" do
    version "0.32.5"
    sha256 "d13b7ebe03d662cc28a9f2c5697a4bcf0bb367095deb4c8bc09a1278d4583cb5"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.32.5/kftray_0.32.5_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
