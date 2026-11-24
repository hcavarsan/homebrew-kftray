cask "kftray" do
    version "0.36.0"
    sha256 "8ba23916c6ced1c6203b585b68d257492aa714422233b534092eec8076a21a45"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.36.0/kftray_0.36.0_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
