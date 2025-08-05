cask "kftray" do
    version "0.20.6"
    sha256 "2117936e6a0b3f865c7faff25fbbae72d3e744d95822a9c7067c97649ef44a5f"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.20.6/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
