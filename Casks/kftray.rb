cask "kftray" do
    version "0.31.0"
    sha256 "f222b24b6a2aae92ee8176916b2991c624bb0ba01cef3fc4c5293a48e71109cb"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.31.0/kftray_0.31.0_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
