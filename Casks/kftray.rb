cask "kftray" do
    version "0.22.2"
    sha256 "44677f148b463cb61a20d2d6652801ef3489310dcdc086382dd60b527757e3fe"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.22.2/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
