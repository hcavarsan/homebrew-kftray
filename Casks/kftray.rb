cask "kftray" do
    version "0.16.2"
    sha256 "6d2914135db30ac5a1230bf48bab1b059be52a5a1f0c6dd92b6058644f87ce0e"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.16.2/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
