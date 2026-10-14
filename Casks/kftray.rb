cask "kftray" do
    version "0.32.0"
    sha256 "ba1e91569d299def5e9900e766913ee8b9f966e9b261365bd706d26719466d4f"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.32.0/kftray_0.32.0_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
