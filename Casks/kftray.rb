cask "kftray" do
    version "0.25.5"
    sha256 "e71cd3383c33e08951c2508753b78481910f9801d9aad0a3cb3d1f858f2ff09c"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.25.5/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
