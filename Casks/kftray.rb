cask "kftray" do
    version "0.27.31"
    sha256 "a896d89967665bce3186e84db1f6077ec27eb7c7d13684957e4ee4b6ad646202"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.31/kftray_0.27.31_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
