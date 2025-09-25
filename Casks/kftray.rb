cask "kftray" do
    version "0.26.2"
    sha256 "93cb098ff71413c6c51b6d8e3a6666a684b026e581309ab9f903076e4ff2fe2a"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.26.2/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
