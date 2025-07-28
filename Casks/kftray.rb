cask "kftray" do
    version "0.20.3"
    sha256 "8f41741b5245b42ebb65784e601455ec90c2510ef5037d67d9cc8e9e9c7b6525"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.20.3/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
