cask "kftray" do
    version "0.29.5"
    sha256 "5beb4c80060995befd5a67c82540b8bef850ceba3d3e402b1d03658b9223c2dd"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.29.5/kftray_0.29.5_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
