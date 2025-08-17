cask "kftray" do
    version "0.21.0"
    sha256 "28addf19e01a6b3c72e7c021744990cc66d23841c7a0d56ef156acd590db2c28"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.21.0/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
