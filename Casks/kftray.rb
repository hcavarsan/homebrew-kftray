cask "kftray" do
    version "0.26.8"
    sha256 "b7b73d18a43dab0111110b432ca9a0e31cd019e3b26f9c016bf8f0dc24437214"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.26.8/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
