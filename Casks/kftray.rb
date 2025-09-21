cask "kftray" do
    version "0.25.3"
    sha256 "8055614e73a79f62a28c045c16bf3388cc0b9c6590484a8aa95377f951e2bfea"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.25.3/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
