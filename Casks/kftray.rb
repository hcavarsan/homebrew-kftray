cask "kftray" do
    version "0.32.4"
    sha256 "67f99f80e823186607ee438158b4752138902ce5145828f0447bce20d6b2c8cc"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.32.4/kftray_0.32.4_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
