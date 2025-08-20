cask "kftray" do
    version "0.21.2"
    sha256 "50c2aebb5958e94f97272b866864ae578041b11536c375050677926b8fd23b8d"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.21.2/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
