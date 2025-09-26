cask "kftray" do
    version "0.26.6"
    sha256 "08e9fb1becbbefd063834f26db9d17a862507888c7e44118b97982b81681624e"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.26.6/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
