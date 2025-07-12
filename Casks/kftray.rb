cask "kftray" do
    version "0.20.0"
    sha256 "af7a29ce2d1d6d554d22e17a00684bc5db394560b0a42d2a71edf8f6d4fb9a6e"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.20.0/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
