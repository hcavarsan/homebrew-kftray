cask "kftray" do
    version "0.22.5"
    sha256 "a7472ee79546856684722ed1db50859b480226b814fafd471a6a531b00d39a5d"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.22.5/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
