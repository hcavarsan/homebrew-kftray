cask "kftray" do
    version "0.18.1"
    sha256 "cdcdbbee921a4b7d1ab6c1e47fc4029e341e4ba4768f842af12a6934d6581bb4"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.18.1/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
