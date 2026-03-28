cask "kftray" do
    version "0.27.28"
    sha256 "7e074cf58b86b4221a47d0cc584ab5a1479773625dc48cbd87111525af4df62a"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.28/kftray_0.27.28_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
