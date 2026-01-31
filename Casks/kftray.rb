cask "kftray" do
    version "0.27.25"
    sha256 "638739720cd46acd40a485e87377354aa7092a1a88ba693237b064cd75cfd2a7"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.25/kftray_0.27.25_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
