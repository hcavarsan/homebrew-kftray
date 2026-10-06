cask "kftray" do
    version "0.29.6"
    sha256 "fec35b877be937454ade2b39458ec50f7d10856677df82e505f7c956e5932af5"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.29.6/kftray_0.29.6_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
