cask "kftray" do
    version "0.30.4"
    sha256 "8edb58458e676b8e0e16afb1d93d9022911c6c312c96ca1242284878fa25219b"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.30.4/kftray_0.30.4_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
