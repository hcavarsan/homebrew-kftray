cask "kftray" do
    version "0.27.0"
    sha256 "b9d9c512bb0a6f485c0e0ee22f543f06fa3bbfc9758afb2ee835871bd085fc2b"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.0/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
