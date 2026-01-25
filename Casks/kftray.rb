cask "kftray" do
    version "0.27.10"
    sha256 "694a875d53a067c9fbfd1b11ea00f70a79849add8f83d9ca3657ea6c77e440dc"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.10/kftray_0.27.10_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
