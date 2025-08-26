cask "kftray" do
    version "0.22.4"
    sha256 "17a5c7aba745f24c198f9d8f5941a3349b556c7bd62bff71935849d5d88462f9"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.22.4/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
