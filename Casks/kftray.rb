cask "kftray" do
    version "0.35.2"
    sha256 "cd91312b41edd27b7f914decb17f3b7182497c143b3d565b9c12facd9dc719a4"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.35.2/kftray_0.35.2_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
