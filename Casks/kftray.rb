cask "kftray" do
    version "0.30.3"
    sha256 "09a72ec9e20b85e6b1ac8ce2d0a4e0f178c1f87928f1df234dd428a11d37e39c"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.30.3/kftray_0.30.3_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
