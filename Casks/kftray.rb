cask "kftray" do
    version "0.27.33"
    sha256 "0b41438ee879d858de9c7da66d79b832a76ceb572d40f648ce67c4bbf0d2b1e6"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.33/kftray_0.27.33_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
