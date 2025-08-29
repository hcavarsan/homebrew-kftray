cask "kftray" do
    version "0.22.7"
    sha256 "0b842a9e1814e8aae088de689324f208a2f6d9b5c997b93d32cd6944a9eeff3f"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.22.7/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
