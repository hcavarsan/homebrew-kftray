cask "kftray" do
    version "0.29.2"
    sha256 "d5769eab006f39f0dddc286d2f72835039c770868ebd65250f50175fd5e2d693"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.29.2/kftray_0.29.2_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
