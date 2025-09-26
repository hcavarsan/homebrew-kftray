cask "kftray" do
    version "0.26.4"
    sha256 "5f7ebc7f0bdcc9faa2080e7a5e117e7a5c3c749dcddc730370e064bd330ebc40"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.26.4/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
