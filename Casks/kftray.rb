cask "kftray" do
    version "0.15.1"
    sha256 "e58ac167b7e98a90a34a13541180e0131bdbdae17e246ab58b3367963f559c53"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.15.1/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
