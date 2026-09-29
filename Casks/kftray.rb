cask "kftray" do
    version "0.29.0"
    sha256 "100ca6ea9b501621c586853b07ca2055ebf11cc7647eb8c78d87efeee31550d0"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.29.0/kftray_0.29.0_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
