cask "kftray" do
    version "0.16.1"
    sha256 "bb6991fb8e448405a5b906c38abd8b98fb65188dd4efc77c41000bc7aac2f4f3"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.16.1/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
