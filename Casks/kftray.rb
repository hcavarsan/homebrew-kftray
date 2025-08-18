cask "kftray" do
    version "0.21.1"
    sha256 "9ed02540c5627a514c9f38c63d159fb4c407c5944cddccf1c73ef3b34bfdafaf"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.21.1/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
