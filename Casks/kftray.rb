cask "kftray" do
    version "0.22.3"
    sha256 "e045f0057eddd0db8feac68a1e02a6cd63be22782a45ae4960a266141453de77"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.22.3/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
