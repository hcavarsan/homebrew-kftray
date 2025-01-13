cask "kftray" do
    version "0.15.5"
    sha256 "78bb478d16b2d62b9893134977db9b0beccbcf1bc6863d4e571a331a263fea1e"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.15.5/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
