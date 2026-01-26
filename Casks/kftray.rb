cask "kftray" do
    version "0.27.11"
    sha256 "fcd62a598778eaf745c55813f626ae3f0f820b1520042a4eb2ffe5903d46e73d"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.11/kftray_0.27.11_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
