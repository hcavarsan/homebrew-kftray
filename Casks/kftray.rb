cask "kftray" do
    version "0.20.1"
    sha256 "0ece9368844943b941ceae3c94962508ec801bef342bf0096daca0fc3a9a6a9f"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.20.1/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
