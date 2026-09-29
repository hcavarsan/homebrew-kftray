cask "kftray" do
    version "0.29.1"
    sha256 "db9ed1f6c5826aaae46a2a7502fdf6f804e1300eaf39790ef7308c2bc1bc266b"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.29.1/kftray_0.29.1_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
