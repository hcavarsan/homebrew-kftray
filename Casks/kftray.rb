cask "kftray" do
    version "0.35.1"
    sha256 "643cbca12ff25b46e92c0eedef20a6d2c59b34403c3541451cd00b366bc04b06"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.35.1/kftray_0.35.1_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
