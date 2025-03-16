cask "kftray" do
    version "0.17.0"
    sha256 "9d443e4d2741b5b54ce66d1c0ecffdfb72acd6553ac61158d47b37455514d131"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.17.0/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
