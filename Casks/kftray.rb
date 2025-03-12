cask "kftray" do
    version "0.16.3"
    sha256 "913eb8e22f52ee1acad7eade065335a4363e8794cb08af6b63f4e656a3b89dcf"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.16.3/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end
