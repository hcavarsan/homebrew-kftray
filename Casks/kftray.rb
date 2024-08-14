cask "kftray" do
    version "0.12.2"
    sha256 "ce688379958b5adef109563737c09b374faaf3ef933f06612874a71d9a8419b5"

    url "https://github.com/hcavarsan/kftray/releases/latest/download/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
