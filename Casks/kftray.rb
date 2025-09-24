cask "kftray" do
    version "0.25.6"
    sha256 "8ab165dafaf3857552a325227ed9a8083654bae3a179a9393a7b66070bdae189"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.25.6/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
