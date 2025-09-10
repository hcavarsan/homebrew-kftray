cask "kftray" do
    version "0.23.6"
    sha256 "197f9d79db13a02d481746ec65ec9fdcd481acb8810c06581853c9203f5f69bd"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.23.6/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
