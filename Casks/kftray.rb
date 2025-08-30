cask "kftray" do
    version "0.22.8"
    sha256 "70f8c469925f6c9fa261ebe872d8348f95a63e5df45ea9a27cc3c6f7f3c78ba9"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.22.8/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
