cask "kftray" do
    version "0.30.1"
    sha256 "ca276c34a76d70271f1bc0fc07e00aeb92841dcb2d75937ae4a35a28db3d5f60"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.30.1/kftray_0.30.1_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
