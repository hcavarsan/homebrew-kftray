cask "kftray" do
    version "0.27.1"
    sha256 "52bf54b24c08f6c52b08d049bf9fb4e04d798cb797461e700577f36ab0a725ce"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.1/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
