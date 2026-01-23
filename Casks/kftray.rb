cask "kftray" do
    version "0.27.9"
    sha256 "62b6097f554ad0d9af55de86cceff969e15c8c8e791c4af7f0a68b5d7bbb1d27"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.9/kftray_0.27.9_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
