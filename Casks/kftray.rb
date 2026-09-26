cask "kftray" do
    version "0.28.0"
    sha256 "67fa1558c5ac2a82408935bd4cbe362bac83bbe23aca365a9fb735a2bbd40f50"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.28.0/kftray_0.28.0_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
